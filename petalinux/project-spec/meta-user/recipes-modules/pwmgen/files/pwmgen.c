#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/uaccess.h> /* Needed for copy_from_user */
#include <asm/io.h> /* Needed for IO Read/Write Functions */
#include <linux/proc_fs.h> /* Needed for Proc File System Functions */
#include <linux/seq_file.h> /* Needed for Sequence File Operations */
#include <linux/platform_device.h> /* Needed for Platform Driver Functions */
#include<linux/slab.h>
#include <linux/of.h>

/* Define Driver Name */
#define DRIVER_NAME "pwmgen"

unsigned long *base_addr; /* Vitual Base Address */
struct resource *res; /* Device Resource Structure */
unsigned long remap_size; /* Device Memory Size */

/* Write operation for /proc/pwmgen
* -----------------------------------
* When user cat a string to /proc/pwmgen file, the string will be stored in
* const char __user *buf. This function will copy the string from user
* space into kernel space, and change it to an unsigned long value.
* It will then write the value to the register of pwmgen controller,
* and turn on the corresponding LEDs eventually.
*/

static ssize_t proc_pwmgen_write(struct file *file, const char __user * buf,
 size_t count, loff_t * ppos)
 {
 char pwmgen_phrase[16];
 u32 pwmgen_value;

 if (count < 11) {
 if (copy_from_user(pwmgen_phrase, buf, count))
 return -EFAULT;

 pwmgen_phrase[count] = '\0';
 }

 pwmgen_value = simple_strtoul(pwmgen_phrase, NULL, 0);
 wmb();
 iowrite32(pwmgen_value, base_addr);
 return count;
 }

 /* Callback function when opening file /proc/pwmgen
 * ------------------------------------------------------
 * Read the register value of pwmgen controller, print the value to
 * the sequence file struct seq_file *p. In file open operation for /proc/pwmgen
 * this callback function will be called first to fill up the seq_file,
 * and seq_read function will print whatever in seq_file to the terminal.
 */
 static int proc_pwmgen_show(struct seq_file *p, void *v)
 {
 u32 pwmgen_value;
 pwmgen_value = ioread32(base_addr);
 seq_printf(p, "0x%x", pwmgen_value);
 return 0;
 }


/* Open function for /proc/pwmgen
 * ------------------------------------
 * When user want to read /proc/pwmgen (i.e. cat /proc/pwmgen), the open function
 * will be called first. In the open function, a seq_file will be prepared and the
 * status of pwmgen will be filled into the seq_file by proc_pwmgen_show function.
 */
 static int proc_pwmgen_open(struct inode *inode, struct file *file)
 {
 unsigned int size = 16;
 char *buf;
 struct seq_file *m;
 int res;

 buf = (char *)kmalloc(size * sizeof(char), GFP_KERNEL);
 if (!buf)
 return -ENOMEM;

 res = single_open(file, proc_pwmgen_show, NULL);

 if (!res) {
 m = file->private_data;
 m->buf = buf;
 m->size = size;
 } else {
 kfree(buf);
 }

 return res;
 }

 /* File Operations for /proc/pwmgen */
 static const struct file_operations proc_pwmgen_operations = {
 .open = proc_pwmgen_open,
 .read = seq_read,
 .write = proc_pwmgen_write,
 .llseek = seq_lseek,
 .release = single_release
 };

 /* Shutdown function for pwmgen
 * -----------------------------------
 * Before pwmgen shutdown, turn-off all the leds
 */
 static void pwmgen_shutdown(struct platform_device *pdev)
 {
 iowrite32(0, base_addr);
 }


 /* Remove function for pwmgen
 * ----------------------------------
 * When pwmgen module is removed, turn off all the leds first,
 * release virtual address and the memory region requested.
 */
 static int pwmgen_remove(struct platform_device *pdev)
 {
 pwmgen_shutdown(pdev);

 /* Remove /proc/pwmgen entry */
 remove_proc_entry(DRIVER_NAME, NULL);

 /* Release mapped virtual address */
 iounmap(base_addr);

 /* Release the region */
 release_mem_region(res->start, remap_size);

 return 0;
 }

 /* Device Probe function for pwmgen
 * ------------------------------------
 * Get the resource structure from the information in device tree.
 * request the memory regioon needed for the controller, and map it into
 * kernel virtual memory space. Create an entry under /proc file system
 * and register file operations for that entry.
 */
 static int pwmgen_probe(struct platform_device *pdev)
 {
 struct proc_dir_entry *pwmgen_proc_entry;
 int ret = 0;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
 dev_err(&pdev->dev, "No memory resource\n");
 return -ENODEV;
 }

 remap_size = res->end - res->start + 1;
 if (!request_mem_region(res->start, remap_size, pdev->name)) {
 dev_err(&pdev->dev, "Cannot request IO\n");
 return -ENXIO;
 }

 base_addr = ioremap(res->start, remap_size);
 if (base_addr == NULL) {
 dev_err(&pdev->dev, "Couldn't ioremap memory at 0x%08lx\n",
 (unsigned long)res->start);
 ret = -ENOMEM;
 goto err_release_region;
 }


 pwmgen_proc_entry = proc_create(DRIVER_NAME, 0, NULL,
 &proc_pwmgen_operations);
 if (pwmgen_proc_entry == NULL) {
 dev_err(&pdev->dev, "Couldn't create proc entry\n");
 ret = -ENOMEM;
 goto err_create_proc_entry;
 }

 printk(KERN_INFO DRIVER_NAME " probed at VA 0x%08lx\n",
 (unsigned long) base_addr);

 return 0;

 err_create_proc_entry:
 iounmap(base_addr);
 err_release_region:
 release_mem_region(res->start, remap_size);

 return ret;
 }

 /* device match table to match with device node in device tree */
 static const struct of_device_id pwmgen_of_match[] = {
 {.compatible = "xlnx,pwm-gen-1.0"},
 {},
 };

 MODULE_DEVICE_TABLE(of, pwmgen_of_match);

 /* platform driver structure for pwmgen driver */
 static struct platform_driver pwmgen_driver = {
 .driver = {
 .name = DRIVER_NAME,
 .owner = THIS_MODULE,
 .of_match_table = pwmgen_of_match},
 .probe = pwmgen_probe,
 .remove = pwmgen_remove,
 .shutdown = pwmgen_shutdown
 };

 /* Register pwmgen platform driver */
 module_platform_driver(pwmgen_driver);

 /* Module Infomations */
 MODULE_AUTHOR("Digilent, Inc.");
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION(DRIVER_NAME ": pwmgen driver (Simple Version)");
 MODULE_ALIAS(DRIVER_NAME);

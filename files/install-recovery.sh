#!/system/bin/sh

insmod /system/lib/modules/vsync.ko
auo_lcd_on=`busybox grep -w auo_lcd_on /proc/kallsyms|busybox sed -e "s/\([0-9A-Fa-f]\{8\}\).*/\1/"`
mddi_auo_prim_lcd_init=`busybox grep -w mddi_auo_prim_lcd_init /proc/kallsyms|busybox sed -e "s/\([0-9A-Fa-f]\{8\}\).*/\1/"`
echo 0x$auo_lcd_on > /proc/t2_register/auo_lcd_on_addr
echo 0x$mddi_auo_prim_lcd_init > /proc/t2_register/mddi_auo_prim_lcd_init_addr
#echo 400 > /proc/t2_register/value

mount -t debugfs debugfs /sys/kernel/debug
#echo 32 > /sys/kernel/debug/msm_fb/0/bpp

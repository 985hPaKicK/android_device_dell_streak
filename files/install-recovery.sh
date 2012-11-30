#!/system/bin/sh

insmod /system/lib/modules/vsync.ko
auo_lcd_on=`busybox grep -w auo_lcd_on /proc/kallsyms|busybox sed -e "s/\([0-9A-Fa-f]\{8\}\).*/\1/"`
mddi_auo_prim_lcd_init=`busybox grep -w mddi_auo_prim_lcd_init /proc/kallsyms|busybox sed -e "s/\([0-9A-Fa-f]\{8\}\).*/\1/"`
echo 0x$auo_lcd_on > /proc/t2_register/auo_lcd_on_addr
echo 0x$mddi_auo_prim_lcd_init > /proc/t2_register/mddi_auo_prim_lcd_init_addr
#echo 400 > /proc/t2_register/value

mount -t debugfs debugfs /sys/kernel/debug
#echo 32 > /sys/kernel/debug/msm_fb/0/bpp

#DSC ROM init script
#CPU
echo "conservative" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 70 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/up_threshold
echo 30 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/down_threshold
echo 200000 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/sampling_rate
echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/sampling_down_factor
echo 245760 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 1267200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo 20 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/freq_step

sysctl -w kernel.panic_on_oops=1;
sysctl -w kernel.panic=0;

#streakOwner's tweaks, revised 2
echo 4096 > /proc/sys/vm/min_free_kbytes	
echo 0 > /proc/sys/vm/laptop_mode
echo 30 > /proc/sys/vm/swappiness
echo 30 > /proc/sys/vm/vfs_cache_pressure
echo 85 > /proc/sys/vm/dirty_ratio
echo 65 > /proc/sys/vm/dirty_background_ratio
echo 400 > /proc/sys/vm/dirty_expire_centisecs
echo 1000> /proc/sys/vm/dirty_writeback_centisecs
echo 512 > /sys/devices/virtual/bdi/179:0/read_ahead_kb
echo 3 > /proc/sys/vm/page-cluster
echo 250 64000 32 64 > /proc/sys/kernel/sem

# Button Notification
chmod 666 /dev/i2c-0
chmod 666 /sys/class/leds/button-backlight/led0
chmod 666 /sys/class/leds/button-backlight/led1
chmod 666 /sys/class/leds/button-backlight/led2

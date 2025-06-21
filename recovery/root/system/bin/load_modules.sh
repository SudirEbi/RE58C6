#!/sbin/sh

load_touchscreen()
{
    insmod /lib/modules/focaltech_ft8756_spi_ts.ko
    insmod /lib/modules/nvt_nt36xxx_spi_ts.ko
    insmod /lib/modules/focaltech_tp.ko
    insmod /lib/modules/focaltech_touch_modules.ko
    insmod /lib/modules/chipone_tddi.ko
}

load_gpio()
{
    insmod /lib/modules/gpio.ko
    insmod /lib/modules/gpio-sprd.ko
    insmod /lib/modules/gpio-pmic-eic-sprd.ko
    insmod /lib/modules/gpio-eic-sprd.ko
    insmod /lib/modules/pinctrl.ko
    insmod /lib/modules/pinctrl-sprd.ko
    insmod /lib/modules/pinctrl-sprd-qogirl6.ko
}

load_trusty()
{
    insmod /lib/modules/trusty.ko
    insmod /lib/modules/trusty_log.ko
    insmod /lib/modules/trusty_pm.ko
    insmod /lib/modules/trusty_irq.ko
    insmod /lib/modules/trusty_virtio.ko
    insmod /lib/modules/trusty-ipc.ko
    insmod /lib/modules/trusty-tui.ko
}

load_usb()
{
    insmod /lib/modules/usb_f_vser.ko
    insmod /lib/modules/extcon-usb-gpio.ko
    insmod /lib/modules/musb_sprd.ko
    insmod /lib/modules/musb_hdrc.ko
}

load_audio()
{
    insmod /lib/modules/audio_pipe.ko
    insmod /lib/modules/audio_mem.ko
    insmod /lib/modules/audio_sipc.ko
    insmod /lib/modules/audio-dsp-dump.ko
}

load_misc()
{
    insmod /lib/modules/sc27xx_tsensor_thermal.ko
    insmod /lib/modules/hardware_info.ko
    insmod /lib/modules/device_info.ko
    insmod /lib/modules/sensorhub.ko
    insmod /lib/modules/kfifo_buf.ko
    insmod /lib/modules/ion_cma_heap.ko
    insmod /lib/modules/ion_ipc_trusty.ko
    insmod /lib/modules/sprd_ion.ko
}

main()
{
    load_touchscreen
    load_gpio
    load_trusty
    load_usb
    load_audio
    load_misc
}

main
setprop modules.loaded 1
exit 0

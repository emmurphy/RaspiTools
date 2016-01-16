for src in arm core h264 isp v3d uart pwm emmc pixel vec hdmi dpi ; do \
echo -e "$src:\t$(vcgencmd measure_clock $src)" ; \
done


for id in core sdram_c sdram_i sdram_p ; do \
echo -e "$id:  $(vcgencmd measure_volts $id)" ; \
done

echo -e "Core Temp: $(vcgencmd measure_temp) "

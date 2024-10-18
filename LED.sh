#显示分别显示红、绿、蓝，红绿、红蓝、蓝绿，可以调整时间。
#命令行里单行执行，就可以换颜色了
#
#!/bin/bash
ontime=0.5
offtime=0
c=100
for i in {1..3}
do
echo 1 > /sys/class/leds/onecloud:red:alive/brightness
sleep $ontime
echo 0 > /sys/class/leds/onecloud:red:alive/brightness
sleep $offtime

echo 1 > /sys/class/leds/onecloud:green:alive/brightness
sleep $ontime
echo 0 > /sys/class/leds/onecloud:green:alive/brightness
sleep $offtime

echo 1 > /sys/class/leds/onecloud:blue:alive/brightness
sleep $ontime
echo 0 > /sys/class/leds/onecloud:blue:alive/brightness
sleep $offtime

echo 1 > /sys/class/leds/onecloud:red:alive/brightness
echo 1 > /sys/class/leds/onecloud:green:alive/brightness
sleep $ontime
echo 0 > /sys/class/leds/onecloud:red:alive/brightness
echo 0 > /sys/class/leds/onecloud:green:alive/brightness
sleep $offtime

echo 1 > /sys/class/leds/onecloud:red:alive/brightness
echo 1 > /sys/class/leds/onecloud:blue:alive/brightness
sleep $ontime
echo 0 > /sys/class/leds/onecloud:red:alive/brightness
echo 0 > /sys/class/leds/onecloud:blue:alive/brightness
sleep $offtime

echo 1 > /sys/class/leds/onecloud:blue:alive/brightness
echo 1 > /sys/class/leds/onecloud:green:alive/brightness
sleep $ontime
echo 0 > /sys/class/leds/onecloud:blue:alive/brightness
echo 0 > /sys/class/leds/onecloud:green:alive/brightness
sleep $offtime
done

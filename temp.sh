#!/usr/bin/sh


echo "room_0_external"
cat /sys/bus/w1/devices/28-0306979425a5/temperature
echo "room_1_top"
cat /sys/bus/w1/devices/28-030f979445fd/temperature
echo "room_2_bottom"
cat /sys/bus/w1/devices/28-03039794629e/temperature


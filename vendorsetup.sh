chmod a+x device/samsung/a12s/mkbootimg
git clone https://gitlab.com/HayateDevTH/avb_tool -b main out/host/linux-x86/bin
sudo chmod +rwx out/host/linux-x86/bin/avbtool
chmod a+x device/samsung/a12s/mkbootimg
add_lunch_combo twrp_a12s-eng
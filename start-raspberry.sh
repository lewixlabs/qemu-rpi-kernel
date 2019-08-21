qemu-system-arm \
  -M versatilepb \
  -cpu arm1176 \
  -m 256 \
  -hda image/hypriotos-rpi-v1.11.1.img \
  -net nic \
  -net user,hostfwd=tcp::5022-:22 \
  -dtb tools/versatile-pb.dtb \
  -kernel kernel-qemu-4.19.50-buster \
  -append 'root=/dev/sda2 panic=1' \
  -no-reboot
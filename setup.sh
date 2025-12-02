sudo apt update; sudo apt install qemu-system uml-utilities virt-manager git \
    wget libguestfs-tools p7zip-full make dmg2img tesseract-ocr \
    tesseract-ocr-eng genisoimage vim net-tools screen novnc python3-websockify python3-numpy -y
openssl req -x509 -nodes -newkey rsa:3072 -keyout novnc.pem -out novnc.pem -days 3650
./fetch-macOS-v2.py -s high-sierra
dmg2img -i BaseSystem.dmg BaseSystem.img
read -p "Hard Drive Size in GB (run df -h to see how much space is free): " s
qemu-img create -f qcow2 mac_hdd_ng.img ${s}G

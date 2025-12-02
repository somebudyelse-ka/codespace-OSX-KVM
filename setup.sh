sudo apt-get install qemu-system uml-utilities virt-manager git \
    wget libguestfs-tools p7zip-full make dmg2img tesseract-ocr \
    tesseract-ocr-eng genisoimage vim net-tools screen -y
./fetch-macOS-v2.py
dmg2img -i BaseSystem.dmg BaseSystem.img
read -p "Hard Drive Size in GB (run df -h to see how much space is free): " s
qemu-img create -f qcow2 mac_hdd_ng.img ${s}G

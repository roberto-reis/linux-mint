##========Instalação do Linux Kernel OEM==========
    sudo apt update
    sudo uname -a
    sudo apt install linux-oem-20.04 fdutils
    sudo reboot (Reinicializar o Sistema)

##========Instalação dos programas básicos==========
    sudo apt install software-properties-common build-essential lsb-core dkms
    sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool

##========Instalação dos programas==========
    sudo apt install papirus-icon-theme speedtest-cli xsensors conky conky-all curl lm-sensors hddtemp gparted audacity bleachbit qbittorrent clementine dropbox sublime-text htop snapd ttf-mscorefonts-installer cheese guvcview v4l-utils vim git p7zip-full p7zip-rar

##========Configuração do canky==========
    mkdir -p ~/.config/conky && conky -C > ~/.config/conky/conky.conf

##========virtualbox=========
    gdebi vitual-box
    sudo usermod -aG vboxusers SEU_USER (Para habilitar o USB no virtual box)

##========Configuração sensors-detect==========
    sudo sensors-detect ou sensors-detect --auto
    sudo sensors ###consegue ver os sensores

##========Iniciar o canky com tempo==========
    "sleep 25 && conky&" ou "sleep 10 && conky& exit"


========Para notbooks Dell==========
    sudo apt install i8kutils

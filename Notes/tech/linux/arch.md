# Arch linux

## Sway

Full wayland config: [fosskers.ca](https://www.fosskers.ca/en/blog/wayland)

## Packages
    Nemo - File Explorer
    Seahorse - GUI für keyring
    alacritty-git           # rust terminal emulator
    alsa-utils
    apvlv
    arandr
    arc-gtk-theme
    archfetch
    at
    autoconf
    autojump
    autojump - Terminal directory switch
    automake
    base-devel - Maketools
    bat
    bat - cat alternative
    bc
    bc - bash calculator
    bleachbit
    calcurse
    calcurse - Kalender
    compton
    cower
    dbeaver
    diff-so-fancy
    dmenu
    docker
    dunst
    exa
    exa - ls Ersatz
    fd
    feh
    feh - Bildbeteachtung Bash
    file-roller p7zip zip unzip unrar
    firefox
    fish
    font-manager
    fzf
    fzf - fuzzy finder
    gcc
    gcc-libs
    git
    git-flow-completion-git
    gitg
    gnome-font-viewer
    gnome-keyring
    gnome-keyring - Passwort Verwaltung
    go
    gparted
    gq
    grep
    gsimplecal
    gucharmap - Font Manager
    htop - Prozessexplorer
    hugo
    i3blocks
    i3gaps                  # window manager
    i3status
    icdiff
    iftop
    imagemagick
    inetutils
    intellij-idea-community-edition
    inxi
    iputils
    make
    maven
    mc
    minitube
    ncdu
    ncdu - Tree Size
    neofetch
    neofetch - Bash
    neomutt
    neovim
    neovim - Editor
    network-manager-applet
    networkmanager
    newsboat
    nmap
    notification-daemon
    npm
    numlockx
    numlockx - Numpad
    offlineimap
    oh-my-zsh-git
    p7zip
    pass
    pass - Passwortmanager
    pass-otp
    pass-update
    peco
    peco - Filertool
    polybar-git
    prezto-git
    pulseaudio
    pulseaudio-alsa
    pv
    pymodoro-git
    python-neovim
    python-pip
    python2-neovim
    python2-pip
    qtpass
    qutebrowser
    ranger
    ranger - File Explorer
    rdesktop
    reflector
    reflex - run cmd after file change
    resty-git
    ripgrep
    ripgrep - searcher
    rofi
    rofi-greenclip
    rofi-pass-git
    rsync
    rustup
    rxvt-unicode
    screenfetch
    scrot
    shellcheck
    simplescreenrecorder
    slack-desktop
    stow
    strace
    sublime-text-dev
    terminator
    terminator - Terminal
    termite
    thefuck - command correcter
    tldr
    tldr - short man page
    tmux
    ttf-iosevka
    ttf-iosevka-term
    turtl - Notes
    ufw
    ufw - Firewall
    unzip
    vim
    vimpager
    visual-studio-code
    wal-git
    weechat
    wget
    wunderline
    xarchiver
    xclip
    xdg-user-dirs
    xdg-user-dirs - User folders
    xdotool
    xss-lock
    yay
    zathura
    zathura-pdf-mupdf
    zsh
    zsh-syntax-highlighting

## 10 Things after installation
Source: [Average Linux User](https://www.youtube.com/watch?v=jW4GFGOIUjc)

Check your current kernel:
    uname -r

### 1. Install an LTS kernel and reconfigure grub:
    sudo pacman -S linux-lts
    sudo grub-mkconfig -o /boot/grub/grub.cfg

You may also install linux-lts-headers.
Reboot and check which kernel is in use with uname -r.

Remove non-lts kernel
    sudo pacman -Rs linux

### 2. Install Microcode
For intel processors with grub boot loader:

    sudo pacman -S intel-ucode
    sudo grub-mkconfig -o /boot/grub/grub.cfg

For AMD processors install linux-firmware package.

### 3. Disable GRUB delay

Add the following to /etc/default/grub:
achieve the fastest possible boot:

    GRUB_FORCE_HIDDEN_MENU="true"

Then put file 31_hold_shift to /etc/grub.d/.
Download 31_hold_shift https://goo.gl/nac6Kp

Make it executable, and regenerate the grub configuration:

    sudo chmod a+x /etc/grub.d/31_hold_shift
    sudo grub-mkconfig -o /boot/grub/grub.cfg

### 4. Install some key packages

    sudo pacman -S adobe-source-sans-pro-fonts aspell-en enchant gst-libav gst-plugins-good hunspell-en icedtea-web jre8-openjdk languagetool libmythes mythes-en pkgstats ttf-anonymous-pro ttf-bitstream-vera ttf-dejavu ttf-droid ttf-gentium ttf-liberation ttf-ubuntu-font-family

### 5. Set up firewall
Install ufw:  

    sudo pacman -S ufw

Enable it.  

    sudo ufw enable 

Check its status:  

    sudo ufw status verbose

Enable the start-up with the system:  

    sudo systemctl enable ufw.service

Reboot and check the status again. It should be active.  

### 6. Encrypt your home directory

Logged out. Switch to a console with Ctrl+Alt+F2. Login as a root and check that your user own no processes:  

    ps -U username 

Install the necessary applications:   

    sudo pacman -S rsync lsof ecryptfs-utils

Then encrypt your home directory:   

    modprobe ecryptfs
    ecryptfs-migrate-home -u username

Mount your encrypted home.  

    ecryptfs-mount-private

Unwrap the passphrase and save it somewhere where only you can access it.  

    ecryptfs-unwrap-passphrase

Run  

    ls .ecryptfs

Edit /etc/pam.d/system-auth:

After the line "auth required pam_unix.so" add: 

    auth required pam_ecryptfs.so unwrap

Above the line "password required pam_unix.so" insert:   

    password optional pam_ecryptfs.so

After the line "session required pam_unix.so" add: 

    session optional pam_ecryptfs.so unwrap

Reboot and make sure that you can login to your desktop

### 7. Remove orphans

    sudo pacman -Rns $(pacman -Qtdq)

### 8. Optimize pacman's database access speeds

    sudo pacman-optimize

### 9. Check for errors

    sudo systemctl --failed
    sudo journalctl -p 3 -xb


### 10. Backup the system

    sudo rsync -aAXvP --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude=/lost+found --exclude=/home/.ecryptfs / /mnt/backupDestination/

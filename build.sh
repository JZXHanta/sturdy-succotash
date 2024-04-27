#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install screen
rpm-ostree install neovim
rpm-ostree install python3-neovim
rpm-ostree install nodejs
rpm-ostree install golang
rpm-ostree install rustup
rpm-ostree install gh


# this would install a package from rpmfusion
# rpm-ostree install vlc

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.local/share/fonts


#### Example for enabling a System Unit File

systemctl enable podman.socket

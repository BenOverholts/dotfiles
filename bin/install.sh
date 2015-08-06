#!/bin/bash
# Setup for Linux environment
# TODO this script could probably be way more leet

initialize() {
    DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
}

checkprivilege()
{
    if [[ "id -u" -ne 0 ]]
        then echo "Please run as root"
        exit 1
    fi
}

installzsh()
{
    # Install
    if [[ "$SHELL" != *"zsh"* ]]
        apt-get --assume-yes install zsh
        chsh -s $(which zsh)
        echo " [INSTALL] zsh install complete"
    fi

    # Copy Config
    ln -s $DIR/../zsh/.zshrc ~/.zshrc
    echo " [CONFIG]  zsh copy-config complete"
}

installvim()
{
    # Install
    apt-get --assume-yes install vim
    echo " [INSTALL] vim install complete"

    # Copy Config
    ln -s $DIR/../vim/.vimrc ~/.vimrc
    echo " [CONFIG]  vim copy-config complete"
}

installjava()
{

}

installst2()
{
    # TODO Install
}

solarize()
{
    # TODO Solarize *everything*
}

checkprivilege #but muh privilege
initialize
installzsh
installvim
installst2
solarize

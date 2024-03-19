#!/bin/bash

CONFIG_DIR=~/.config/nvim
NVARCH=$(find / -type d -name "ignore")

# making sure neovim directory exists
function neovim {
    if [ -d "$CONFIG_DIR" ]; then
        rm -r ~/.config/nvim
        mkdir ~/.config/nvim
    else
        mkdir ~/.config/nvim
    fi
} 

# makes sure the repository exists
function repo {
    if [ -d "$NVARCH" ]; then
        echo "Repository detected"
    else
        git clone https://github.com/azsao/ignore.git 
    fi 
}

# un-modular the file from the repository
function modular {
    # these are directories
    mv "$NVARCH"/lua/ ~/.config/nvim
    mv "$NVARCH"/modules ~/.config/nvim/lua/nvarch/
    mv "$NVARCH"/cosmetics ~/.config/nvim/lua/nvarch/modules
    mv "$NVARCH"/utility/ ~/.config/nvim/lua/nvarch/
    mv "$NVARCH"/lang/ ~/.config/nvim/lua/nvarch/utility/
    # these are files
    mv "$NVARCH"/init.lua ~/.config/nvim/
    mv "$NVARCH"/lazy.lua ~/.config/nvim/lua/nvarch/
}

function ending {
    echo "Add"
    echo "ASCI"
    echo "Art"
} 

# Call functions
neovim
repo
modular
ending

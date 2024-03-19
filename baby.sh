#!/bin/bash

NVARCH = ~/ignore/

rm -r ~/.config/nvim
    mkdir ~/.config/nvim
    mv "$NVARCH"/lua/ ~/.config/nvim
    mv "$NVARCH"/modules ~/.config/nvim/lua/nvarch/
    mv "$NVARCH"/cosmetics ~/.config/nvim/lua/nvarch/modules
    mv "$NVARCH"/utility/ ~/.config/nvim/lua/nvarch/
    mv "$NVARCH"/lang/ ~/.config/nvim/lua/nvarch/utility/
    # these are files
    mv "$NVARCH"/init.lua ~/.config/nvim/
    mv "$NVARCH"/lazy.lua ~/.config/nvim/lua/nvarch/

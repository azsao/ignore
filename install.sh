!/bin/bash

# git clone in home directory
# add check for neovim for multiple linux distro's 

rm -r ~/.config/nvim
mkdir ~/.config/nvim

mkdir ~/.config/nvim/lua/
mkdir ~/.config/nvim/lua/nvarch/

mv init.lua ~/.config/nvim/
mv lazy.lua ~/.config/nvim/lua/nvarch/
mv modules/ ~/.config/nvim/lua/nvarch/
mv utility/ ~/.config/nvim/lua/nvarch/

# add sub-dir now

mv cosmetics/ ~/.config/nvim/lua/nvarch/modules/
mv lang/ ~/.config/nvim/lua/nvarch/utility/



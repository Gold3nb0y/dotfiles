#!/bin/bash

cp -r nvim ~/.config/

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

nvim --headless +PackerSync +q
nvim --headless +PackerUpgrade +q

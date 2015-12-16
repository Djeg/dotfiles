#!/bin/bash

echo "
|---------------------------------------------|
|    ___  ___  _____  ________  __    __  __  |
|   /   \/___\/__   \/ __\_   \/ /   /__\/ _\ |
|  / /\ //  //  / /\/ _\  / /\/ /   /_\  \ \  |
| / /_// \_//  / / / / /\/ /_/ /___//__  _\ \ |
|/___,'\___/   \/  \/  \____/\____/\__/  \__/ |
|---------------------------------------------|

Instalation in progress ...
"

bash .setup/dependencies.sh
bash .setup/vim.sh
bash .setup/zsh.sh
bash .setup/font.sh
bash .setup/tmux.sh
bash .setup/git.sh
bash .setup/tmuxinator.sh
bash .setup/elementary-freya-tweaks.sh
bash .setup/terminator.sh
bash .setup/ag.sh

echo "If no error happens, it means that this dotfiles are installed."
echo "You can reset your terminal and use zsh in order to enjoy those dotfiles."
echo ""
echo "See ya dear master 😄 !"

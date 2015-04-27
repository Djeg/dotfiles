echo "Installing tmuxintaor configuration ..."


mkdir ~/.bin
cd ~ && ln -s .dotfiles/tmux/tmuxinator.zsh .bin/tmuxinator.zsh
cd ~ && ln -s .dotfiles/tmux/tmuxinator .tmuxinator

echo "DONE!"

Dotfiles para vanilla arch

Instalar: 

- fish shell
- neovim
- fd
- tmux
- ripgrep
- Iosevka Nerd Font
- TODO: Completar lista de dependencias a instalar

Colocar la carpeta dotfiles en el home directory y realizar los siguientes symlink

```bash
ln -s $HOME/dotfiles/sway $HOME/.config/
ln -s $HOME/dotfiles/nvim $HOME/.config/
ln -s $HOME/dotfiles/fish $HOME/.config/
ln -s $HOME/dotfiles/foot $HOME/.config/
ln -s $HOME/dotfiles/helix $HOME/.config/
ln -s $HOME/dotfiles/gtk-3.0 $HOME/.config
ln -s $HOME/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/tmux/.tmux.conf.local $HOME/.tmux.conf.local
```

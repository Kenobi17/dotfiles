Mis dotfiles / configuraciones para poder utilizar directo dentro de archcraft i3wm premium.

Instalar: 

- fish shell
- neovim
- fd
- tmux
- ripgrep
- JetBrainsMono Nerd Font


Colocar la carpeta dotfiles en el home directory y realizar los siguientes symlink

```bash
ln -s $HOME/dotfiles/i3 $HOME/.config/
ln -s $HOME/dotfiles/nvim $HOME/.config/
ln -s $HOME/dotfiles/fish $HOME/.config/
ln -s $HOME/dotfiles/alacritty $HOME/.config/
ln -s $HOME/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/tmux/.tmux.conf.local $HOME/.tmux.conf.local
```

Mis dotfiles / configuraciones para poder utilizar directo dentro de Manjaro i3wm base.

Instalar: 

- fish shell
- polybar
- neovim
- wezterm
- feh (wallpaper)

Colocar la carpeta dotfiles en el home directory y realizar los siguientes symlink

```bash
ln -s $HOME/dotfiles/.i3/ $HOME/.i3wm
ln -s $HOME/dotfiles/nvim $HOME/.config/
ln -s $HOME/dotfiles/fish $HOME/.config/
ln -s $HOME/dotfiles/polybar $HOME/polybar
ln -s $HOME/dotfiles/.wezterm.lua $HOME/.wezterm.lua
```

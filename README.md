# dotfiles

Configurations are managed by [GNU Stow](https://www.gnu.org/software/stow/) (thanking Brandon Invergo for his [brilliant suggestion](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)).


## :warning: Submodules

Don't forget to `git clone --recursive` as this repo is using submodules

Clone it to your home directory:

```bash
git clone --recursive git@github.com:muchweb/dotfiles.git -- .dotfiles
```

## Scripts

Installing scripts to `/usr/local/bin`:

```bash
sudo stow -t '/' scripts
```

## Lightdm

Installing lightdm config to `/etc/lightdm/lightdm.conf`:

```bash
yaourt -S gtk-theme-boje flattr-icon-theme-git
sudo rm /etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm.conf
sudo stow -t '/' lightdm lightdm-gtk-greeter
```

## ZSH

```bash
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ../.oh-my-zsh
chsh -s $(which zsh)
stow zsh
```
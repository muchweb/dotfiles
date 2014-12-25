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
sudo stow -t "/" scripts
```
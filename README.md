# dotfiles
some dotfile i use

you'll to install a few things

## nvim

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

then throw the `init.vim` into `~/.config/nvim/`
## lf

```sh
wget https://github.com/gokcehan/lf/releases/download/r6/lf-linux-amd64.tar.gz -O lf-linux-amd64.tar.gz
tar xvf lf-linux-amd64.tar.gz
chmod +x lf
sudo mv lf /usr/local/bin
```

after that just move `lfrc` into `~/.config/lf/`

# zsh and oh-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Then run the install.sh, it might run automatically i don't remember

oh-my-zsh i think also installs zsh if you don't have it installed. It should put `.zshrc` into your home directory,
so just replace it with my, or copypasta what you want

I use a plugin called `fast-syntax-highlighting` which it doesn't have by default so you'll need to

```sh
git clone https://github.com/zdharma/fast-syntax-highlighting ~/.oh-my-zsh/plugins
```

so oh-my-zsh can see it. after that add the line `exec zsh` at the bottom of `~/.bashrc` and that's about it

cya

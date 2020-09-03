# dotfiles

some dotfile i use

## notable differences

press <ctrl-o> to open lf, once you quit lf you'll be in the directory you were in with lf
  
neovim is basically vim but with some cool features. I have basic plugins and settings that make things easier. I coudln't find a decent autocomplete that works with 16.04 ubuntu but I'm sure that one does exist somewhere.

zsh runs faster than bash, and has more features like tab complete, using hjkl to move around the suggestions, as well as highlightings. there's
probably more plugins that do cool things out there that I haven't seen.

also there's some aliases i added like g for git or v for nvim. You can read them.

## setup

you'll to install a few things

### nvim

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

then throw the `init.vim` into `~/.config/nvim/`

### lf

```sh
wget https://github.com/gokcehan/lf/releases/download/r6/lf-linux-amd64.tar.gz -O lf-linux-amd64.tar.gz
tar xvf lf-linux-amd64.tar.gz
chmod +x lf
sudo mv lf /usr/local/bin
```

after that just move `lfrc` into `~/.config/lf/`

### zsh and oh-my-zsh

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

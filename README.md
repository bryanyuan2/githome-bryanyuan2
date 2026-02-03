
# Bash 
## cycheng bash setting

```shell
sh setup.sh
```
## Install brew
- source: https://brew.sh/
 
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
## Install iTerm 2
- source: https://iterm2.com/ 
- install Blazer color scheme - [Blazer](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Blazer.itermcolors)


```shell
brew install iterm2
```

## Install zsh
- source: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

```shell
brew install zsh
```
## Install Oh-my-zsh
- source: https://ohmyz.sh/

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

在安裝 `Oh-my-zsh` 後他會問你是否要默認 zsh 為預設 shell
如果當初忘記轉換的玩家，可以在安裝完後輸入下列指令轉換。

```shell
sudo sh -c "echo $(which zsh) >> /etc/shells"$ ==chsh -s $(which zsh)==
```

如果想要轉換回來也可以，記得要重新啟動 iTerm 2 或是重開一個新視窗

```shell
chsh -s /bin/bash # 之後轉換回 zsh  
chsh -s /usr/loacl/bin/zsh
```

用 `Homebrew` 安裝的 `Zsh` 位置在 `/usr/local/bin/zsh`，而系統安裝的則會在 `/bin/zsh`。

## Install powerlevel10k (up-to-date)
- source: https://github.com/romkatv/powerlevel10

1. Clone the repository:

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```
    
2. Open `~/.zshrc`, find the line that sets `ZSH_THEME`, and change its value to `"powerlevel10k/powerlevel10k"`.
## Install .p10k.zsh for powerlevel10k
- source: https://timjames.dev/blog/overhaul-your-terminal-with-zsh-plugins-more-3oag#powerful-plugins

```shell
mv ~/.p10k.zsh ~/.p10k.zsh.old
ln -s ~/githome-bryanyuan2/zsh-theme/p10k.zsh ~/.p10k.zsh
```

```shell
git clone https://github.com/dracula/lsd.git
```

## Install Pokemon Say
- source: https://github.com/possatti/pokemonsay

```shell
brew tap possatti/possatti
brew install pokemonsay
brew install fortune
export fortune | pokemonsay
```

## Install Dracula theme for zsh 
- source: https://draculatheme.com/zsh 

```shell
git clone https://github.com/dracula/zsh.git
ln -s $DRACULA_THEME/dracula.zsh-theme $OH_MY_ZSH/themes/dracula.zsh-theme
```

## Install lsd
- source: https://github.com/lsd-rs/lsd

```shell
brew install lsd

# set the target lsd config file
lsd --config-file ~/.config/lsd/config.yaml
```
## Install navi
- source: https://github.com/denisidoro/navi  

```shell
brew install navi
```

## Install yt-dlp
- source: https://github.com/yt-dlp/yt-dlp

# Workspace 
- Reeder Classic: https://reederapp.com/classic/
- Obsidian:  https://obsidian.md/
- Typora: https://typora.io/
- Sublime Text: https://www.sublimetext.com/
- VS Code: https://code.visualstudio.com/
- Raindrop.io: https://raindrop.io/
- LastPass:  https://www.lastpass.com/
- chatGPT: https://chatgpt.com/download/
- Dropbox:  https://www.dropbox.com/desktop
- Chrome: https://www.google.com/chrome/
- Edge: https://www.microsoft.com/zh-tw/edge/download
# Theme
- Dracula Theme: https://draculatheme.com/

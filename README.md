# dotfiles
Yep, these are my dotfiles. I manage them via [GNU Stow](https://www.gnu.org/software/stow/) installed through [Homebrew](http://brew.sh/).

```zsh
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/reatlat/dotfiles/HEAD/install.sh)"
```

## Steps to install manually

**1. Install Homebrew by running:**  
```zsh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


**2. Clone this repo**  
```zsh
$ cd ~/
$ git clone --depth=1 git@github.com:reatlat/dotfiles.git
$ cd dotfiles/
```


**3. Install Homebrew Formulae from brew.txt**  
```zsh
$ cat brew.txt | xargs brew install
```


**4. Setup Symlinks via Stow**  
```zsh
$ cd ~/dotfiles
$ stow bash
$ stow zsh (do this after installing oh my zsh)
$ stow git
$ stow husky
```


**5. Install software in brew-cask.txt**  
```zsh
$ cat brew-cask.txt | xargs brew install --cask
```


**6. Install global npm packages in npm.txt**  
```zsh
$ cat npm.txt | xargs npm install -g
```


And just like that...  

![Dassit](https://media.giphy.com/media/l0IyczK2hyezd4Avu/giphy.gif)

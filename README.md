<!-- Links -->
[powerlevel10k]: https://github.com/romkatv/powerlevel10k.git 
[homebrew]: https://brew.sh
[omz]: https://www.youtube.com/watch?v=CF1tMjvHDRA

$ZSH_CUSTOM/themes/powerlevel10k

Stock configurations on the terminal is just not good enough! You are looking to customise the look and feel on the terminal, as well as VSCode.

# MacOS #
Details below on how to configure for a better experience if you like working on the terminal. Most settings are inspired and even adopted from
various places and I made it my own.

```bash
# Get Homebrew and install from command line
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow instuctions on basic configurations on Homebrew mainpage.

## ZSH: With Oh-My-Zsh ##

### Prerequisites ###
1. Install [Oh-my-zsh][omz]
2. Font [powerlevel10k]
    ```bash
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ```
3. ..

> `.zprofile`
> Empty is by default. 
> 
> `.profile` is only loaded when running zsh in sh compatibility mode, otherwise, it reads `.zprofile`, as well as `.zshrc` for interactive and `.zlogin` for login shells.
> Their purpose develops from when they are loaded. As `.zshrc` is loaded for interactive shells, sets the aliases etc. you expect. `.profile` has the additional property that it's loaded by several other shells as well (e.g. Bash, Ksh, Csh, Zsh) unless it finds something more specific. You can store configuration for multiple shells in this file.

> `.zfunctions` My user defined functions (udf)
>
> Start the first line with a shebang 

Example:
```bash
#!/usr/bin/env bash

# Create a new directory and enter into it
function mkd() {
    mkdir -p "$@" && cd "$_";
}
```



```bash
# Pyenv loads automatically. 
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```


## Shell ##
foo bar

## VSCode ##
Install extensions (some may be installed automatically when you login):
1. Black Formatter - Microsoft
2. CSV to Table - Andrew Armstrong
3. Flake8 Microsoft
4. Gitlens - GitKraken
5. Jupyter - Microsoft
6. Markdown - Yu Zhang
7. Material Icon Theme
8. Prettier - Code formatter
9. Pylance - Microsfot
10. Pylint - Microsoft
11. Python - Microsoft
12. Rainbow CSV - Mechatroner
13. VSCode Great Icons

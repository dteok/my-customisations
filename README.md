<!-- Links -->
[powerlevel10k]: https://github.com/romkatv/powerlevel10k.git 
[nerdfonts]: https://www.nerdfonts.com
[homebrew]: https://brew.sh
[omz]: https://www.youtube.com/watch?v=CF1tMjvHDRA
[iterm2]: https://iterm2.com
[vscode]: https://code.visualstudio.com
[zshthemes]: https://github.com/unixorn/awesome-zsh-plugins

Stock configurations on the terminal is just not good enough! They lack the aesthetic look -- boring, in other words. You are looking to customise the look and feel of the terminal ([iTerm2]), as well as VSCode. There are a few options to choose from, and normally, you'd *just pick one* that works best for you.

1. Oh-My-Zsh
1. Shell
1. Starship

# MacOS #
Details below on how to configure for a better experience if you like working on the terminal. Most settings are inspired and even adopted from various places.

Tested and documented using Apple's MacBook.

## Prerequisites ##
1. [iTerm2]
1. [Homebrew]
    ```bash
    # Get Homebrew and install from command line
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
    Follow the basic configurations instructions on Homebrew mainpage.
1. Fonts. 
    - [Power Level 10K][powerlevel10k], and/or
    - [Nerd Fonts][nerdfonts]
    
    To ensure installation of a font type, check it in `Font Book`. Spotlight Seach for it.
1. [VS Code][vscode]


## ZSH: With Oh-My-Zsh ##
A quick overview about Zsh.
- It comes with auto-completion when using the terminal. The `TAB` key auto-completes whatever command you want to run, and also offers suggestions of possible commands, files, and directories.
- Zsh is more customisable than Bash.
- Supports [plug-ins and themes][zshthemes]. 

### Getting Started ###
1. Install the [Oh-my-zsh][omz] framework
2. Font [powerlevel10k]
    ```bash
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ```
3. Begin custom configurations. See `dotfiles/zsh/.z*` files
    > `.zprofile`
    > Empty is by default. 
    
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

<!--show screenshot of versioned customisations-->

### Getting Started ###


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

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/Documents/gitrepos/dotfiles/shell/.{path,bash_prompt,exports,aliases,functions,extra,kubectl_completion}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Kubernetes bash-completion. Added 2023-06-08
brew_etc="/opt/homebrew/etc" && [[ -r "${brew_etc}/profile.d/bash_completion.sh" ]] && source "${brew_etc}/profile.d/bash_completion.sh"


# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

# Homebrew post-installation instruction
eval "$(/opt/homebrew/bin/brew shellenv)"

# Pyenv post-installation config for bash
if command -v pyenv 1>/dev/null 2>&1; then 
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
	pyenv shell 3.11.0
fi 

# Starship initialisation -- 25 September 2023
eval "$(starship init bash)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/danny.teok/Downloads/google-cloud-sdk/path.bash.inc' ]; then 
	source '/Users/danny.teok/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/danny.teok/Downloads/google-cloud-sdk/completion.bash.inc' ]; then 
	source '/Users/danny.teok/Downloads/google-cloud-sdk/completion.bash.inc'; fi
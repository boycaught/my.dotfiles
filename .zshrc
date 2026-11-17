#!/bin/zsh
## updated to v_2026.11.17
#LastUpdated: 08/04/2024
#LastUpdated: 08/16/2023
#LastUpdated: 01/03/2025
#LastUpdated: 11/17/2026
#v2025.01.03

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Prefer 'nano' shell editor
export EDITOR="nano"

#### OH-MY-ZSH ##############################################################
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jonathan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

# Add wisely, as too many plugins slow down shell startup.
plugins=(git direnv sublime)
source $ZSH/oh-my-zsh.sh

# init z   https://github.com/rupa/z
. ~/z/z.sh

# Link Rubies to Homebrew's OpenSSL 1.1
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"

# Load rbenv
# eval "$(rbenv init -)"

# Load pyenv
eval "$(pyenv init --path)"

# Customizations
for file in ~/dotfiles/.{appversions,paths,aliases,extras,exports,functions,macros,shell_integration}; do
        [ -r "$file" ] && source "$file"
done
unset file

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add PyENV customizations
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/larry_green/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# BoxLang home bin directory - added by BVM on Mon Apr 20 20:38:41 PDT 2026
export PATH="/Users/larry_green/.boxlang/bin:$PATH"

# Java JRE installed by BoxLang installer
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-21-jre"
export PATH="$JAVA_HOME/bin:$PATH"

# Added by BVM (BoxLang Version Manager) installer
export PATH="/Users/larry_green/.bvm/bin:$PATH"

# BVM environment setup
export BVM_HOME="/Users/larry_green/.bvm"

# BVM provides BoxLang binaries through wrappers when no version is active
# Current version takes precedence when available
if [ -L "$BVM_HOME/current" ]; then
    export PATH="$BVM_HOME/current/bin:$PATH"
fi

# nanobrew
export PATH="/opt/nanobrew/prefix/bin:$PATH"

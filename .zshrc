#!/bin/zsh

## updated to v_2026.11.17
#LastUpdated: 08/04/2024
#LastUpdated: 08/16/2023
#LastUpdated: 01/03/2025
#LastUpdated: 11/17/2026
#v2026.11.17

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Prefer 'nano' shell editor
export EDITOR="nano"

# Initialize Z   https://github.com/rupa/z
. ~/z/z.sh

#### OH-MY-ZSH ##############################################################
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jonathan"
plugins=(git direnv sublime)
source $ZSH/oh-my-zsh.sh

#### CUSTOMIZATIONS ##############################################################
for file in ~/dotfiles/.{appversions,paths,aliases,extras,exports,functions,macros,shell_integration}; do
        [ -r "$file" ] && source "$file"
done
unset file

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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

# NANOBREW
export PATH="/opt/nanobrew/prefix/bin:$PATH"

# ADDED BY ANTIGRAVITY CLI INSTALLER
export PATH="/Users/larry_green/.local/bin:$PATH"

#!/bin/zsh
## updated to v_2019.06.28

# get version settings
source ~/dotfiles/.appversions

# get paths
source ~/dotfiles/.paths

# Customizations
for file in ~/dotfiles/.{aliases,extras,exports,functions,macros}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/z/z.sh

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Prefer 'nano' shell editor
export EDITOR="nano"

# some additional edits based on the Messiah box.
# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh
# v_XXX files are application [v]ersion files, added to the ~/dotfiles/.appversions file

#EOF
#LastUpdated: 6/28/2019
#v2019.06.28

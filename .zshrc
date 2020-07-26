#!/bin/zsh
## updated to v_2020.07.26

# Customizations
for file in ~/dotfiles/.{appversions,paths,aliases,extras,exports,functions,macros,shell_integration}; do
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

# Link Rubies to Homebrew's OpenSSL 1.1
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Load rbenv automatically
eval "$(rbenv init -)"

# some additional edits based on the Messiah box.
# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh
# v_XXX files are application [v]ersion files, added to the ~/dotfiles/.appversions file

#EOF
#LastUpdated: 7/26/2020
#v2020.07.26

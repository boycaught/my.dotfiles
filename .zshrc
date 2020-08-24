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

# Load rbenv
eval "$(rbenv init -)"

# Load pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#EOF
#LastUpdated: 08/24/2020
#v2020.08.24

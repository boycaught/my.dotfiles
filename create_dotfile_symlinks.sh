#!/bin/sh

echo "Create DOTFILES symbolic links in HOME director. ........\n"

# put binaries into array
dotfile_links=(
	.ackrc
	.aliases
	.bash_completion
	.bash_profile
	.bash_prompt
	.bashrc
	.brew
	.brewfresh
	.editorconfig
	.exports
	.extras
	.flushprivs
	.inputrc
	.jshintrc
	.macros
	.osx
	.paths
	.shell_integration
	.updates
	.vimrc
	.zshrc
	.zshrc.pre-oh-my-zsh
	nix/default.nix
	nix/shell.nix
)
# loop through array
for link in "${dotfile_links[@]}"
do
	ln -s ~/dotfiles/$link ~/$link
done
# report completion
echo "..... SYMBOLIC LINKS created. ...................\n"

# .LAG's dotfiles (my.dotfiles)
Sensible developer defaults on OSX—inspired by others, like this guy: [mathias's readme](https://github.com/mathiasbynens/dotfiles/) is awesome. go read it.

This repo is mostly for me but you're welcome to make suggestions. Mathias's is the project to fork.  I'm mostly catching up to him, @cowboy, and @gf3. (And, this is a personal note: I do not know any of these people,in no way, shape or form, and I've never met them or spoken to them ever, all I know about them is  the code they've shared on GitHub.)

## install the neccessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, nave, etc.

## private config

Toss it into a file called `.extras` which you do not commit to this repo and just keep in your `~/`

I do something nice with my `PATH` there:

```shell
# PATH like a bawss
      PATH=/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/bin
PATH=$PATH:~/.rvm/bin
PATH=$PATH:~/code/git-friendly
# ...

export PATH
```

## Syntax highlighting

…is really important. even for these files.

Install [Dotfiles Syntax Highlighting](https://github.com/mattbanks/dotfiles-syntax-highlighting-st2) via [Sublime Text 2 Package Control](http://wbond.net/sublime_packages/package_control)


### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

## Similar projects

I recommend getting a [`.jshintrc`](https://github.com/jshint/node-jshint/blob/master/.jshintrc) and [`.editorconfig`](http://editorconfig.org/) defined for all your projects.





## overview of files

####  Automatic config
* `.ackrc` - for ack (better than grep)
* `.vimrc`, `.vim` - vim config, obv.

#### shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.macros`
* `.zshrc`
* `.extras` - not included, explained above

#### manual run
* `install-deps.sh` - random apps i need installed
* `.osx` - run on a fresh osx machine
* `.brew` - homebrew intialization
* `.updates` - homebrew initialization (formerly included meteor.js)

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - config for bash readline

#### application version control
* `.appversions` - config for handling application version numbers in one place 

## Installation

```bash
git clone https://github.com/boycaught/my.dotfiles.git dotfiles \
&& cd dotfiles \
&& chmod a+x *.sh \
&& ./sync.sh
```

To update later on, just run the sync again.

NOTE: the 'APPVERSIONS' process should be run, manually, on a daily basis... or as possible.

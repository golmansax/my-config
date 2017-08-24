My Configurations
=========
For various things like dotfiles, scripts, setup.  Note to self: don't add dependencies to other repos so
these configurations can be used right away.

Gravitar is from: http://www.alispagnola.com/Free/saxophone2.jpg.

### Submodule commands
* Adding: `git submodule add [git URL] dotfiles/vim/bundle/[repo-name]
* When checking out repo for first time: `git submodule update --init --recursive`
* When updating submodules: `git submodule update --recursive --remote`

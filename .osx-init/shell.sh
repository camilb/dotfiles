#!/usr/bin/env bash
RUBY_VERSION="2.4.2"

set -e


if ! hash rbenv 2> /dev/null; then
  brew install rbenv ruby-build
fi

if ! rbenv version | grep ${RUBY_VERSION} > /dev/null; then
  rbenv install ${RUBY_VERSION}
fi

rbenv global ${RUBY_VERSION}
rbenv rehash

#docker completion
cd /usr/local/etc/bash_completion.d
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion

sudo dscl . append /Groups/wheel GroupMembership ${USER}
# sed -i '' -e '/^%admin/s/^/# /g'
sudo sed -i '' -e '/# %wheel	ALL=(ALL) NOPASSWD: ALL/s/^# //g' /etc/sudoers

#
# sudo bash -c 'echo $(which bash) >> /etc/shells'
# chsh -s $(which bash)

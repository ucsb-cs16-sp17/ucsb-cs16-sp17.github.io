#!/usr/bin/env bash

echo "Installing software needed to run Jekyll locally... "
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
rvm install ruby-2.1.7
rvm use 2.1.7
gem install bundler
bundle install --path vendor/bundle
echo "Done."

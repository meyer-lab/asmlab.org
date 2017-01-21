#!/usr/bin/env bash

# halt script on error
set -e

bundle exec jekyll build
bundle exec ruby scripts/htmlproof.rb

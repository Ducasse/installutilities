#!/usr/bin/env bash

source ./utils.sh

e_header "Installing brew utilities"

binaries=(
  #awscli                               # AWS CLI tool https://aws.amazon.com/cli/
  bash                                  # up-to-date bash version
  #bat                                   # cat clone with syntax highlighting and git integration https://github.com/sharkdp/bat
  #certbot                               # Let's Encrypt tool from EFF https://certbot.eff.org/
  coreutils                             # gnu coreutils
  curl                                  # up-to-date version of curl
  #dialog                                # used in shell scripts to present questions/display msgs https://invisible-island.net/dialog/
  diff-so-fancy                         # best-lookin git diffs https://github.com/so-fancy/diff-so-fancy
  #dry                                   # docker manager https://github.com/moncho/dry
  #ffmpeg                                # streaming media editing tool
  #figlet                                # text to ascii art converter http://www.figlet.org/
  findutils                             # gnu findutils
  git                                   # up-to-date version of git
  git-extras                            # extra git utilities https://github.com/tj/git-extras
  #git-fresh                             # some more git utilities to keep git clean https://github.com/imsky/git-fresh
  #glances                               # https://github.com/nicolargo/glances
  graphicsmagick                        # very powerful image processor
  hub                                   # GitHub CLI tool
  htop                                  # The best process monitor
  imagemagick                           # another image processor
  m-cli                                 # macos tool https://github.com/rgcr/m-cli
  ncdu                                  # ncurses disk usage https://dev.yorhel.nl/ncdu
   #pyenv                                 # manage python versions easily https://github.com/pyenv/pyenv
  #pyenv-virtualenv                      # manage virtualenvs for different python versions https://github.com/pyenv/pyenv-virtualenv
   tree                                  # fast recursive directory listing tool http://mama.indstate.edu/users/ice/tree/
  wget                                  # up-to-date wget
  youtube-dl                            # download a youtube (or other) video by URL or ID https://rg3.github.io/youtube-dl/
)

e_arrow "Installing brew packages"

# brew install TomAnthony/brews/itermocil # Don't use it as much as I'd like
for binary in "${binaries[@]}"; do
  brew install $binary
done

e_arrow "Installing GNU version of utils"

gbinaries=(
  grep
  gnu-sed
)
brew install ${gbinaries[@]}

brew cleanup
brew prune

e_success "Done!"

#!/bin/sh

# This script installs or copies all the right files to the right location.

YELLOW='\033[1;33m'
NC='\033[0m' # No Color

copy()
{
    if [ $1 -ot $2 ]; then
        echo -e Skip copying [${YELLOW}$1${NC}] -\> [${YELLOW}$2${NC}]
        return
    fi

    echo -e Copying [${YELLOW}$1${NC}] -\> [${YELLOW}$2${NC}]
    cp -f $1 $2
}

clear

if [ -z "$HOME" ]; then
    echo -e Install failed: ${YELLOW}\$HOME${NC} environment variable not set.
    exit 1
fi

if [ ! -d "$HOME" ]; then
    echo -e Install failed: [${YELLOW}$HOME${NC}] folder was not found.
    exit 1
fi

read -p "Press [Enter] key to install files into HOME directory at ..."
copy .bashrc "$HOME/.bashrc"
copy .gitconfig "$HOME/.gitconfig"
copy .gitk "$HOME/.gitk"

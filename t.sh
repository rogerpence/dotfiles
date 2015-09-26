#!/usr/bin/env bash

# save dotfiles root directory
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# fetch updated remote refs
git remote update

# store local and remote commit ids
LOCAL_ID=$(git rev-parse HEAD)
REMOTE_ID=$(git rev-parse @{u})
BASE_ID=$(git merge-base HEAD @{u})

echo $LOCAL_ID
echo $REMOTE_ID
echo $BASE_ID

# # sync local with remote
# if [ $LOCAL_ID = $REMOTE_ID ]; then
#     echo "Local repository is synced with remote"
# elif [ $LOCAL_ID = $BASE_ID ]; then
#     git pull origin master
# elif [ $REMOTE_ID = $BASE_ID ]; then
#     git push origin master
# else
#     echo "Local repository and remote are diverged"
# fi

# run the sync command
#php $DOTFILES/robo sync

# source profile
#source ~/.profile
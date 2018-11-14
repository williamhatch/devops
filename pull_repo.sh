#! /usr/bin/env bash
for dir in ./*/
do
  cd ${dir}
  git status >/dev/null 2>&1
  # check if exit status of above was 0, indicating we're in a git repo
  [ $(echo $?) -eq 0 ] && echo "Updating ${dir%*/}..." && git pull
  cd ..
done

# git clone https://user_name@github.com/*.git
# git config --global credential.helper 'cache --timeout=26280000000' #in case prompt password always!

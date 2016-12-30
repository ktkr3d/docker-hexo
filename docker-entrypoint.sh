#!/bin/sh

umask 0000

git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL

/usr/bin/env hexo server

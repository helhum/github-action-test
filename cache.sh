#!/bin/sh

pwd
echo $1/foo/bar
mkdir -p $1/foo/bar
ls -la $1/foo/bar
if [ -f "$1/foo/bar/baz" ] then
  echo 'cache hit';
else
  touch $1/foo/bar/baz
  echo 'bla' > $1/foo/bar/blupp
fi

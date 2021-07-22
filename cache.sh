#!/bin/sh

mkdir -p $1/foo/bar
ls -la $1/foo/bar

echo $2 > $1/current

if [ -f "$1/foo/bar/baz" ]
then
  echo 'cache hit';
else
  echo 'cache miss';
  touch $1/foo/bar/baz
  echo 'bla' > $1/foo/bar/blupp
fi


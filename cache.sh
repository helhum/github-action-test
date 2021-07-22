#!/bin/sh

mkdir -p $1/foo/bar
echo 'before write'
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

echo 'after write'
ls -la $1/foo/bar

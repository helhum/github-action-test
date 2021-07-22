#!/bin/sh

mkdir -p $1/foo/bar
echo 'before write'
ls -la $1
ls -la $1/foo/bar

if [ -f "$1/foo/bar/baz" ]
then
  echo
  echo 'Cache HIT';
  [ -f "$1/foo/bar/current" ] && cat $1/foo/bar/current
  echo
else
  echo 'Cache MISS';
  [ -f "$1/foo/bar/current" ] && cat $1/foo/bar/current
  touch $1/foo/bar/baz
  echo 'bla' > $1/foo/bar/blupp
fi

echo 'after write'
echo $2 > $1/foo/bar/current
ls -la $1
ls -la $1/foo/bar

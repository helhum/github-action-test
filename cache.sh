#!/bin/sh

pwd
mkdir -p /foo/bar
ls -la /foo/bar
if [ -f '/foo/bar/baz' ] then
  echo 'cache hit';
else
  touch /foo/bar/baz
  echo 'bla' > /foo/bar/blupp
fi

#!/bin/bash
mkdir -p a/b/c/d/e/f
ls -ld a
find . -type d -name 'f' -print
find . -maxdepth 2 -type d -name 'b'  -print
rm -rf a/

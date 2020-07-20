#!/bin/bash

gcc -O3 -c wc_c.c
ghc -O2 wc.hs -o wc -fglasgow-exts wc_c.o

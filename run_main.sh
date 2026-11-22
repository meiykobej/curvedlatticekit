#!/usr/bin/env bash
set -e
LIB="stark-blur.a"
TAG="golden-ember-cosmic-garden"
REPO="meiykobej/curvedlatticekit"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app

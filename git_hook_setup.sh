#!/bin/bash
cp post_merge .git/hooks/
cp post_checkout .git/hooks/
chmod +x .git/hooks/*

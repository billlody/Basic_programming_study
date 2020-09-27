#!/bin/bash

rm -f */**/*.ipynb */*.ipynb
jupytext --from py --to ipynb */**/*.py */*.py *.py
jupytext --set-formats ipynb,py:percent --sync */**/*.ipynb */*.ipynb *.ipynb 

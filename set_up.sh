#!/usr/bin/env bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

conda create -n stan python=3.7.2
source activate stan
conda install --file requirements.txt
echo "Env set up finished. You can open the notebook now by"
echo ""
echo "${green}source activate stan && jupyter notebook . ${reset}"
echo ""

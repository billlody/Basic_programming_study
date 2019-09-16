# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/home/yzheng/boost/boost/lib
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/home/yzheng/Downloads/mlpack/build/lib/

export PATH=/home/yzheng/byobu/bin/:$PATH
export PATH=/opt/anaconda/bin:$PATH

LC_ALL=C
export LC_ALL

work="/dat/work/yzheng"
daily="/dat/work/yzheng/myusim"
intra="/dat/work/yzheng/myusim_hf"
ga="/dat/work/yzheng/ga"
data="/dat/work/yzheng/data"

alias ..="cd .."
alias la="ls -all"
alias em="/home/yzheng/emacs-24.5/src/emacs -nw"
alias em2="/home/yzheng/emacs-24.5_ubiq3/src/emacs"
alias enw='emacs -nw'
alias valgrind="/home/yzheng/valgrind/bin/valgrind"
alias cmake="/home/yzheng/cmake/bin/cmake"

HOMEP="/home/yzheng/Personal"

PYTHONPATH=${PYTHONPATH}:/home/yzheng/Documents/Analysis/:${HOMEDW}/openpyxl-openpyxl/:${HOMEDW}/jdcal-1.2/:${HOMEDW}/et_xmlfile-1.0.1/:${HOMEP}/pyalgotrade-cn/bin:${HOMEP}/tushare/bin:${HOMEL}/arch/build/lib.linux-x86_64-2.7/:${HOMEDW}/Otherlib/:${HOMEDW}/pykalman
export PYTHONPATH

# User specific aliases and functions

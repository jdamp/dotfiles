export PYTHONPATH=$ROOTSYS/lib:$PYTHONPATH
#export PYTHONPATH=$HOME/Dropbox/masterthesis/python/lib:$PYTHONPATH
#export PYTHONPATH=$HOME/Dropbox/masterthesis/Thesis_Plots:$PYTHONPATH
export PATH=/home/jdamp/local/texlive/2017/bin/x86_64-linux:$HOME/.local/bin:$PATH # for rootpy
export MANPATH=/home/jdamp/local/texlive/2017/texmf-dist/doc/man:$MANPATH
export PATH=$PATH:"$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH=$PATH:~/.local/anaconda3/bin
export PATH=/usr/lib/jvm/java-8-jre/jre/bin:$PATH
[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
export XILINXD_LICENSE_FILE=2100@galileo.srv.uni-mainz.de:2100@iph-olymp.physik.uni-mainz.de

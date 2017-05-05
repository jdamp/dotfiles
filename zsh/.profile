export PYTHONPATH=$ROOTSYS/lib:$PYTHONPATH
#export PYTHONPATH=$HOME/Dropbox/masterthesis/python/lib:$PYTHONPATH
#export PYTHONPATH=$HOME/Dropbox/masterthesis/Thesis_Plots:$PYTHONPATH
export PATH=/home/jdamp/local/texlive/2016/bin/x86_64-linux:$HOME/.local/bin:$PATH # for rootpy
export MANPATH=/home/jdamp/local/texlive/2016/texmf-dist/doc/man:$MANPATH
export PATH=$PATH:"$(ruby -e 'print Gem.user_dir')/bin:$PATH"

[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"


PWD=`pwd`

ln -s ${PWD}/vim ~/.vim

IFS= read -r -d '' BASH_PROFILE << EOM
if [ -f ${PWD}/bash_profile ]; then
    . ${PWD}/bash_profile 
fi 
EOM

PLAT = "$(uname -s)"
case "${PLAT}" in
    Darwin) BASHRC=bash_profile
    *) BASHRC=bashrc
esac

if ! ggrep psdevenv ~/.${BASHRC}; then 
    echo "${BASH_PROFILE}" >> ~/.${BASHRC}
fi

WRITE_VIMRC=y
if [ -f ~/.vimrc ]; then
    read -p "~/.vimrc already exists; overwrite [yn]?" OVERWRITE
fi

if [[ $WRITE_VIMRC =~ [yY] ]]; then 
    echo "so ${PWD}/default_vimrc" > ~/.vimrc
    echo "" >> ~/.vimrc
fi

git submodule init
git submodule update --recursive

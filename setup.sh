
PWD=`pwd`

echo ln -s ${PWD}/vim ~/.vim

IFS= read -r -d '' BASH_PROFILE << EOM
if [ -f ${PWD}/bash_profile ]; then
    . ${PWD}/bash_profile 
fi 
EOM

echo ${BASH_PROFILE} >> ~/.bashrc

echo "so ${PWD}/default_vimrc"

echo git submodule init
echo git submodule update --recursive

# Paul's Common Development Environment 
Just a repo to keep vim and shell settings in one place. Most everything is a Git
submodule except Pathogen and patched fonts for Airline.  Pathogen (`pathogen.vim`) needs to
copied into `vim/autoload` and the patched fonts need to be installed for whatever OS is
being used.

1. Change the `.vim` directory to a symbolic link to the `vim` directory in this repo: 
```sh 
ln -s <path to vim directory> ~/.vim 
```
2. Add the following to the bash profile (i.e., `.bash_profile`): 
```sh 
if [ -f ~/Projects/psdevenv/bash_profile ]; then
    . ~/Projects/psdevenv/bash_profile 
fi 
```
3. After cloning the repo, the submodules also need to be populated. For this `git submodule
--init --recursive` does the trick. 


## Vim

Buffers
- Next/previous buffer: `<A-Right>/<A-Left>`

Searching
- Clear last search: `<leader><space>`
- All search/replace are global by default (set via `gdefault`).

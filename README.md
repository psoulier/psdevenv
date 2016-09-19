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


## Vim Notes

### Key Mappings
Vim loads initialization files in an order something like the following:
1. $VIM/vimrc
2. $HOME/.vimrc
3. $VIM/gvimrc
4. $HOME/.gvimrc

I was trying to map Alt- keys in my .vimrc for switching buffers, but they were being
overriden.  MacVim has a bunch of default key mappings that override the Alt keys in gvimrc.
I didn't want to maintain two initialization files

Buffers
- Next/previous buffer: `<A-Right>/<A-Left>`

Searching
- Clear last search: `<leader><space>`
- All search/replace are global by default (set via `gdefault`).

### File Type Extensions
File type extensions should go in `vim/after/ftplugin` with the name of the *file type*.  The file
type is different from the extension (i.e.: for markdown, there should be a file called
`markdown.vim`; not `md.vim`).


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
3. After cloning the repo, the submodules also need to be populated. 
    ```sh
    git submodule init
    git submodule update --recursive
    ```


## Vim Notes

### Formatting Code

* `%retab!` Convert tabs/spaces as per the current setting of `expandtab` (i.e., if `et` is set, all
tabs are replaced with spaces and visa versa).  The '%' a range specifying the entire
buffer, `!` uses `expandtab` setting.
* `gg=G` Re-indent entire file (`gg` to top of file `=` indent, `G` to bottom of file).
* Simple way to reformat selection of code, in visual mode: `=`

### Search and Replace
All search/replace operations are set to global by default via `gdefault`.

* `:%s/search/replace/`
* Clear last search: `<leader><space>`

### Key Mappings
Vim loads initialization files in an order something like the following:

1. $VIM/vimrc
2. $HOME/.vimrc
3. $VIM/gvimrc
4. $HOME/.gvimrc

I was trying to map Alt- keys in my .vimrc for switching buffers, but they were being
overridden.  MacVim has a bunch of default key mappings that override the Alt keys in gvimrc.
I didn't want to maintain two initialization files

Buffers

- Previous/next buffer: `<C-b>` and `<C-n>`

### Debugging Vim Scripts

* `scriptnames` Useful for showing a list of all scripts and the load order.

### File Type Extensions
File type extensions should go in `vim/after/ftplugin` with the name of the *file type*.  The file
type is different from the extension (i.e.: for markdown, there should be a file called
`markdown.vim`; not `md.vim`).


## Bash Notes

### Updating Bash on MacOS
MacOS uses an old version of bash.  Due to GPL license issues, bash isn't
updated with the OS.  The following steps can be used to configure another
version of bash for the OS using Homebrew:

1. Update brew: `brew update`
2. Install bash: `brew install bash`
3. Become superuser to modify `/etc/shells`: `sudo -s`
4. Update list of acceptable shells for the system: `cat /usr/local/bin/bash >> /etc/shells`
5. Set user's shell: `chsh -s /usr/local/bin/bash
    

## GNU Make Notes

### Debugging
Make has a few ways to "print" info - the following are probably the best
(although maybe not intended for debugging):

* `$(error text)` - make quits immediately after showing the message.
* `$(warning test)`
* `$(info text)`

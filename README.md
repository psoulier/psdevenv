# Paul's Common Development Environment 
Just a repo to keep vim and shell settings in one place. 

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
3. Add the following to `~/.vimrc`:
    ```
    so ~/<path-to-psdevenv>/default_vimrc
    ```
4. After cloning the repo, the submodules also need to be populated. 
    ```sh
    git submodule init
    git submodule update --recursive
    ```

## Notes
* [Vim](VIM.md)

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
    
## Ubuntu Setup
* I use i3 window manager on a VM (which caused some issues).  
    * With VMWare, needed to add `vmware-user` to `.profiles` to get clipboard working. 
    * Use `feh --bg-center wallpaper-image` to set background.  This actually
    generates a script that I add to `.profile`.  This way, anytime I change the
    background it's effectively restored next boot.
    * Used `urxvt` for terminal because it supports transparency.  This was a
    pain.  Had to modify `.Xdefaults` to set fonts and other configuration
    instead of `.Xresources` as many articles indicate.  Probably a distro
    thing.

## GNU Make Notes

### Debugging
Make has a few ways to "print" info - the following are probably the best
(although maybe not intended for debugging):

* `$(error text)` - make quits immediately after showing the message.
* `$(warning test)`
* `$(info text)`

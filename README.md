# Paul's Common Development Environment

Remove old `.vim` directory and create a link to common Vim directory:
```
ln -s <path to vim directory> ~/.vim
```

Add the following to your bash profile (i.e., `.bash_profile`):
```
if [ -f ~/Projects/psdevenv/bash_profile ]; then
	. ~/Projects/psdevenv/bash_profile
fi
```


# Vim
Various notes on using Vim.

In general, I find that very few plugins are useful to me beyond a passing
amusement.  Nerdtree and Ctrl-P are the only two I actually use on a daily
basis.  Some plugins that may be worth looking at:
* Clang format
* you complete me
* nerd commenter
* a.vim

Some websites that have some good Vim notes:
* https://sanctum.geek.nz/arabesque/vim-anti-patterns/
* https://begriffs.com/posts/2019-07-19-history-use-vim.html?hn=3

## Formatting Code

* `%retab!` Convert tabs/spaces as per the current setting of `expandtab` (i.e., if `et` is set, all
tabs are replaced with spaces and visa versa).  The '%' a range specifying the entire
buffer, `!` uses `expandtab` setting.
* `gg=G` Re-indent entire file (`gg` to top of file `=` indent, `G` to bottom of file).
* Simple way to reformat selection of code, in visual mode: `=`

## Search and Replace
All search/replace operations are set to global by default via `gdefault`.
Matching whole word.  For example, I want to replace all `printf`'s with
`DEBUG`, but don't want to catch stray `sprintf`'s in the replacement.  

```
;%s/\v<printf>/DEBUG/
;%s/\<printf\>/DEBUG
```

The `\v` is "very magic" and just changes the escaping of meta-characters.  More
info can be found with `;help pattern`

* `:%s/search/replace/`
* Clear last search: `<leader><space>`

## Moving Around
* Go back to last insertion point: two backticks or `gi`.  
* Go forward/backwards to insertion points with `g;` and `g,`.

## Misc
* Delete a specific line.  For example, delete line 5 with `:5d`.
* Replace pattern with a newline, i.e., replace "," with newline: `;%s/,/\r/`

## Key Mappings
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

## Debugging Vim Scripts

* `scriptnames` Useful for showing a list of all scripts and the load order.

## File Type Extensions
File type extensions should go in `vim/after/ftplugin` with the name of the *file type*.  The file
type is different from the extension (i.e.: for markdown, there should be a file called
`markdown.vim`; not `md.vim`).

# Entering Unicode Characters
 You can enter unicode by going into insert/replace mode and then using
 `^vuxxxx` where "xxxx" is a 16-bit unicode value.  Complete list:
 * `^vnnn` where `nnn` is a decimal value
 * `^vonnn` with `nnn` as octal
 * `^vxnn` where `xx` is hex
 * `^vuxxxx` where `xxxx` is a Unicode code point

# Sourcing Text from File Into Buffer
Sometimes it's helpful to copy a chunk of text from one file into your current,
working buffer.  Copy and paste w/ a GUI would seem to be a preferable approach,
however not always possible when working in consoles. The following can be used:

```
:put =readfile('/path/to/file.c')[149:199]
```

Note that the line numbers copied are [150,200]; the syntax is a 0-based array.


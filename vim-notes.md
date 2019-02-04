Vim Notes

# Searching and Replacing

Matching whole word.  For example, I want to replace all `printf`'s with
`DEBUG`, but don't want to catch stray `sprintf`'s in the replacement.  

```
;%s/\v<printf>/DEBUG/
;%s/\<printf\>/DEBUG
```

The `\v` is "very magic" and just changes the escaping of meta-characters.  More
info can be found with `;help pattern`

# Entering Unicode Characters
 You can enter unicode by going into insert/replace mode and then using
 `^vuxxxx` where "xxxx" is a 16-bit unicode value.  Complete list:
 * `^vnnn` where `nnn` is a decimal value
 * `^vonnn` with `nnn` as octal
 * `^vxnn` where `xx` is hex
 * `^vuxxxx` where `xxxx` is a Unicode code point


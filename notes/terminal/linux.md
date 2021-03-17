# Linux

Curated cheat sheet for *filesystem* and *text processing* commands on linux.

```sh
[cmd] -- [args]  # Indicates that following args. are not options
# E.g.: rm -- -f # Remove file called '-f'
```

```sh
cat <file> # Display the content of a text file
cat -b     # Add line number to non-blank line
cat -n     # Add line number to all lines
cat -s     # Suppress repeated emplty lines to one
```

```sh
cd    # Change to home dir (env variable $HOME)
cd ~  # Change to home dir
cd /  # Change to root dir
cd .. # Change to parent dir
```

```sh
cp <src> <dest>    # Copy src into a destination file or dir
cp -f              # Force, if dest cannot be opened, it's removed
cp -i              # Asks before overwrite
cp -n              # Do not overwrite
cp -r              # Copy dirs recursively
cp -u              # Copy only if src is newer than dest or dest is missing
cp -p[attr]        # Preserve attributes [all, ownership, timestamps...]
cp -t <dest> <src> # Copy all src into the dest dir
cp -T              # Force dest to be taken as a normal file (not a dir)
```

```sh
df    # Outputs free disk space
df -h # Use human readable units
```

```sh
dir     # List current dir contents
dir -a  # Include hidden files
dir -l  # Long format
dir -lh # Long format with human readable units
dir -s  # Show file size
dir -S  # Sort by size
dir -t  # Sort by time
dir -U  # Do not sort
dir -x  # List by lines, instead of columns
dir -X  # Sort extension name
dir -1  # List one file per line
```

```sh
du         # Outputs usage of disk space
du -a      # Includes all files, not only dirs
du -c      # Display a grand total at the end
du -d<num> # Print only num levels of depth
du -h      # Print human readable units
du -s      # Display only a grand total
```

```sh
echo <str> # Outputs a string
echo -n    # Avoid a new line at the end
echo -e    # Enables escaped chars.
echo -E    # Disables escaped chars.
```

```sh
head <file>           # Outputs the first 10 lines of file
head -c<num>, --bytes # Prints num amount of bytes
head -n<num>, --lines # Prints num amount of lines instead of 10
```

```sh
ls     # List current dir contents
ls -a  # Include hidden files
ls -l  # Long format
ls -lh # Long format with readable file size
ls -R  # List recursively
ls -s  # Show file size
ls -S  # Sort by size
ls -t  # Sort by time
ls -X  # Sort by extension name
```

```sh
mkdir <dir>         # Makea a new dir
mkdir path/<dir> -p # Creates "path" if doesn't exists
```

```sh
mv <src> <dest>    # Move src into a destination file or dir
mv -f              # Force overwriting
mv -i              # Asks before overwrite
mv -n              # Do not overwrite
mv -u              # Copy only if src is newer than dest or dest is missing
mv -t <dest> <src> # Copy all src into the dest dir
mv -T <src> <dest> # Force dest to be taken as a normal file (not a dir)
```

```sh
pwd # Show current dir
```

```sh
rm <file>    # Remove file
rm -f <file> # Force removing
rm -i <file> # Ask mebofe removing each file
rm -r <dir>  # Remove dir and its content recursively
rm -d <dir>  # Remove dir if it's empty
```

```sh
rmdir <dir> # Remove empty dir
```

```sh
tail <file>           # Outputs the last 10 lines of file
tail -c<num>, --bytes # Prints num amount of bytes
tail -n<num>, --lines # Prints num amount of lines instead of 10
```

```sh
touch <file> # Create or update file
```

```sh
wc <file>      # Print newline, word, and byte count
wc -c, --bytes # Print the byte counts
wc -m, --chars # Print the char counts
wc -l, --lines # Print the line counts
wc -w, --words # Print the word counts
```

<!-- ```sh
ping <host> # Ping host "host"
awk
grep
man
sed
vi
``` -->

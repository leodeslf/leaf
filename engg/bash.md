# Bash

A cheatsheet for **file-system**, **text-processing**, and a few more bash commands with some of their options.

## Not options

```bash
[cmd] -- [args]
# Indicates that following args are not options
# E.g.: `rm -- -r` # Remove file called "-r"
```

## Concatenate commands

```bash
<cmd1> \
<cmd2>
# Shell concatenates lines (same as deleting the new line char)
```

```bash
<cmd1> ; <cmd2>
# Shell waits for cmd1 to finish, then runs cmd2
```

```bash
<cmd1> & <cmd2>
# Shell runs cmd1 in the background, doesn't wait for it to finish
# (immediatelly returns exit code 0) and runs cmd2
```

```bash
<cmd1> | <cmd2>
# Shell runs cmd1, waits for it to finish and takes its standard output
# as standard input for cmd2
```

```bash
<cmd1> && <cmd2>
# Shell runs cmd2, only, and only if cmd1 succeeds (returns exit code == 0)
```

```bash
<cmd1> || <cmd2>
# Shell runs cmd2, only, and only if cmd1 fails (returns exit code != 0)
```

```bash
<cmd> |& <cmd>
# Shell runs cmd1, waits for it to finish and takes both standard output
# and standard error from cmd1 as standard input for cmd2
```

## `cat`

```bash
cat <file> # Display the content of a text file
cat -b     # Add line number to non-blank line
cat -n     # Add line number to all lines
cat -s     # Suppress repeated emplty lines to one
```

## `cd`

```bash
cd    # Change to home dir (env variable $HOME)
cd ~  # Change to home dir
cd /  # Change to root dir
cd .. # Change to parent dir
```

## `cp`

```bash
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

## `df`

```bash
df    # Outputs free disk space
df -h # Use human readable units
```

## `dir`

```bash
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

## `du`

```bash
du         # Outputs usage of disk space
du -a      # Includes all files, not only dirs
du -c      # Display a grand total at the end
du -d<num> # Print only num levels of depth
du -h      # Print human readable units
du -s      # Display only a grand total
```

## `echo`

```bash
echo <str> # Outputs a string
echo -n    # Avoid a new line at the end
echo -e    # Enables escaped chars.
echo -E    # Disables escaped chars.
```

## `head`

```bash
head <file>           # Outputs the first 10 lines of file
head -c<num>, --bytes # Prints num amount of bytes
head -n<num>, --lines # Prints num amount of lines instead of 10
```

## `ls`

```bash
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

## `mkdir`

```bash
mkdir <dir>         # Make a new dir
mkdir path/<dir> -p # Creates "path" if doesn't exists
```

## `mv`

```bash
mv <src> <dest>    # Move src into a destination file or dir
mv -f              # Force overwriting
mv -i              # Asks before overwrite
mv -n              # Do not overwrite
mv -u              # Copy only if src is newer than dest or dest is missing
mv -t <dest> <src> # Copy all src into the dest dir
mv -T <src> <dest> # Force dest to be taken as a normal file (not a dir)
```

## `ping`

```bash
ping <host>
ping -n <num> # Number of echos request to send
ping -l <num> # Buffer size
ping -w <num> # Timeout in milliseconds to wait for each reply
```

## `pwd`

```bash
pwd # Show current dir
```

## `rm`

```bash
rm <file>    # Remove file
rm -f <file> # Force removing
rm -i <file> # Ask mebofe removing each file
rm -r <dir>  # Remove dir and its content recursively
rm -d <dir>  # Remove dir if it's empty
```

## `rmdir`

```bash
rmdir <dir> # Remove only empty dirs
```

## `tail`

```bash
tail <file>           # Outputs the last 10 lines of file
tail -c<num>, --bytes # Prints num amount of bytes
tail -n<num>, --lines # Prints num amount of lines instead of 10
```

## `touch`

```bash
touch <file> # Create or update file
```

## `wc`

```bash
wc <file>      # Print newline, word, and byte count
wc -c, --bytes # Print the byte counts
wc -m, --chars # Print the char counts
wc -l, --lines # Print the line counts
wc -w, --words # Print the word counts
```

## `sed`

```bash
sed <script> <file>
sed '/regexp/d' <file>        # Delete match
sed 's/old/new/' <file>       # Replac match
sed 's/old/new/g' <file>      # Replace all matches (global)
sed '<number>p' <file>        # Print specified line
sed -E, -r,                   # Use extended regular expressions
sed -n, --quiet, --silent     # Suppress output (modifications/deletions)
sed -i<suffix?>, --in-place   # Edit file in-place (avoid standart output)
sed -e <script>, --expression # Allow multiple expressions
sed -f <script-file>, --file  # Run a script file
```

<!-- https://www.gnu.org/software/sed/manual/html_node/index.html#SEC_Contents -->
<!-- https://quickref.me/sed -->

## `find`

```bash
find [src-dir]          # Find files in src dir/s
find -name "<regexp>"   # By name
find -iname "<regexp>"  # By name, case-insensitive
find -type d            # Only directories
find -type f            # Only files
find -size <num><unit>  # By size
find -size +<num><unit> # Bigger than
find -size -<num><unit> # Smaller than 
find -size <num>b       # By num 512-byte blocks (default)
find -size <num>c       # By num Bytes
find -size <num>k       # By num Kilobytes
find -size <num>M       # By num Megabytes
find -size <num>G       # By num Gigabytes
find -maxdepth <num>    # Set maximum direcory depth
find -mindepth <num>    # Set minimum direcory depth
```

<!-- https://quickref.me/find -->

<!-- ```bash
awk
grep <patterns> <file>
``` -->

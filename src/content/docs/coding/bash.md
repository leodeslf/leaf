# Bash

A cheatsheet for **file-system**, **text-processing**, and a few more bash commands with some of their options.

## `cat`

```bash
cat <file> # Display the content of a text file
cat -b     # Add line number to non-blank line
cat -n     # Add line number to all lines
cat -s     # Suppress repeated empty lines to one
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

## `date`

```bash
date         # Prints the current date and time
date +%c     # Date and time: locale
date +%D     # Date: mm/dd/yy
date +%F     # Date: yyyy-mm-dd
date +%x     # Date: locale
date +%C     # Century: the first two digits of the year
date +%y     # Year: yy
date +%Y     # Year: yyyy
date +%b, %h # Month: abbreviated name
date +%B     # Month: name
date +%m     # Month: mm, leading zero
date +%U     # Week of the year: [1, n], week starts on Sunday
date +%V     # Week of the year: [1, n], week starts on Monday
date +%W     # Week of the year: [0, n], week starts on Monday
date +%a     # Day: abbreviated name
date +%A     # Day: name
date +%j     # Day of the year: ddd, leading zeroes
date +%d     # Day of the month: dd, leading zero
date +%e     # Day of the month: dd, leading space
date +%w     # Day of the week: [0, 6], 0 is Sunday
date +%u     # Day of the week: [1, 7], 1 is Monday
date +%T     # Time: HH:MM:SS, 24-hour
date +%R     # Time: HH:MM, 24-hour
date +%r     # Time: locale, 12-hour
date +%X     # Time: locale, 24-hour
date +%H     # Hour: HH, leading zero, 24-hour
date +%I     # Hour: HH, leading zero, 12-hour
date +%k     # Hour: HH, leading space, 24-hour
date +%l     # Hour: HH, leading space, 12-hour
date +%M     # Minutes: MM, leading zero
date +%s     # Seconds: since 1970-01-01 00:00:00
date +%S     # Seconds: SS, leading zero
date +%N     # Nanoseconds
date +%z     # Timezone: HHMM
date +%:z    # Timezone: HH:MM
date +%::z   # Timezone: HH:MM:SS
date +%Z     # Timezone: name
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

## `find`

```bash
find [src-dir]          # Find files in src dir/s
find -name "<regex>"    # By name
find -iname "<regex>"   # By name, case-insensitive
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
find -maxdepth <num>    # Set maximum directory depth
find -mindepth <num>    # Set minimum directory depth
```

## `grep`

```bash
grep [patterns] [file] # Global regular expression print
grep -i                # Ignore case distinctions
grep -f <file>         # Take patterns from a file
grep -F                # Take patterns as fixed string instead of a regex
grep -v                # Invert matching sense (select non-matching lines)
grep -w                # Select only by word-matches (match whole words)
grep -x                # Select only by line-matches (match whole lines)
grep -l                # Print only the file name for matching files
grep -L                # Print only the file name for non-matching files
grep -o                # Print only the matching parts (not the line)
grep -n                # Prefix output with the matching line number
```

## `head`

```bash
head <file>           # Outputs the first 10 lines of file
head -c<num>, --bytes # Prints num amount of bytes
head -n<num>, --lines # Prints num amount of lines instead of 10
```

## `less`

```bash
less <file>       # Shows one screenful of the file at a time
less -g           # Highlights only the last match for searches
less -G           # Don't highlight any matches for searches
less -i           # Ignore case in search
less -I           # Ignore case in search and pattern
less -p <pattern> # Start at pattern
less -N           # Display line numbers
less -s           # Squeeze multiple blank lines
less -S           # Chop long lines
less -X           # Don't clean screen after exit
```

```bash
# While running `less`
g                       # Go to first line
<num>g                  # Go to num line
G                       # Go to last line
down_arrow, enter, e, j # Move forward one line
up_arrow, y, k          # Move backward one line
space_bar, f            # Move forward one page
b                       # Move backward one page
q                       # Exit
/<pattern>              # Forward search for pattern
?<pattern>              # Backward search for pattern
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
pwd # Print working dir
```

## `rm`

```bash
rm <file>    # Remove file
rm -f <file> # Force removing
rm -i <file> # Ask before removing each file
rm -r <dir>  # Remove dir and its content recursively
rm -d <dir>  # Remove dir if it's empty
```

## `rmdir`

```bash
rmdir <dir> # Remove only empty dirs
```

## `sed`

```bash
sed <script> <file>
sed '/regex/d' <file>         # Delete match
sed 's/old/new/' <file>       # Replace match
sed 's/old/new/g' <file>      # Replace all matches (global)
sed '<num>p' <file>           # Print the specified line
sed -E, -r,                   # Use extended regular expressions
sed -n, --quiet, --silent     # Suppress output (modifications/deletions)
sed -i<suffix?>, --in-place   # Edit file in-place (avoid standard output)
sed -e <script>, --expression # Allow multiple expressions
sed -f <script-file>, --file  # Run a script file
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

## Other

### Aliases

```bash
# ~/.bashrc
alias <cmd-alias>='<cmd>' # Defines cmd-alias as an alias for cmd
```

### Arguments Not options

```bash
[cmd] -- [args]
# Indicates that following args are not options
# E.g.: `rm -- -r` # Remove file called "-r"
```

### Concatenate Commands

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
# (immediately returns exit code 0) and runs cmd2
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

----

Reference:

- [An A-Z Index of the Linux Command Line (ss64.com/bash)](https://ss64.com/bash/).
- [Bash Guide for Beginners (tldp.org)](https://tldp.org/LDP/Bash-Beginners-Guide/html/).
- [Bash Programming - Introduction (tldp.org)](https://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html).
- [Bash Reference Manual (gnu.org)](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html)
- [Linux Manual Pages (man7.org)](https://man7.org/linux/man-pages/dir_by_project.html)
- [Shell Workshop (udacity.com)](https://classroom.udacity.com/courses/ud206).
- [The Bash Guide (guide.bash.academy)](https://guide.bash.academy/).

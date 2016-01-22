# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


here=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
font_dir="$HOME/.fonts"
id_file="$font_dir/184A221D-FADB-4E24-BAA6-DBB35CD7EB94"

if [ ! -d "$font_dir" -o ! -e "$id_file" ] ; then
    bash $here/install.sh && touch "$id_file"
fi

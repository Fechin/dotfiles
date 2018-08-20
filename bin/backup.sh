#!/bin/bash
####################################
# An backup script.
# example:
# > sh backup.sh /var/www/hexo
# > _var_www_hexo-20180813102904.tgz
####################################

# What to backup.
backup_dir=${1:-licensez}

# Where to backup to.
dest="backup"
mkdir -p $dest

# Create archive filename.
day=$(date +%Y%m%d%H%M%S)
archive_file="$(sed 's/\//_/g' <<< "$backup_dir")-$day.tgz"

# Print start status message.
echo "Backing up $backup_dir to $dest/$archive_file"

# Backup the files using tar.
tar czf $dest/$archive_file $backup_dir


# Long listing of files in $dest to check file sizes.
ls -lh $dest

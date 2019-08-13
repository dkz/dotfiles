#! /bin/sh -
# Synchronize system configuration files with repository

rsync -v /var/lib/portage/world world
rsync -avz /etc/portage .

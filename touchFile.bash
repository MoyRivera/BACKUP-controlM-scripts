#!/bin/bash

# Commands
DATE=/usr/bin/date

# Vars
FILENAME=noname
DESTDIR=/tmp

TIMESTAMP=`${DATE} +"%s-%N"`


if [ -n "$1" ]
then
   FILENAME=$1
fi   

FILENAME="${FILENAME}-${TIMESTAMP}"

echo "Creating file ${DESTDIR}/${FILENAME}"
echo "File created by script ${0} runned with Ansible Automation Platform" > ${DESTDIR}/${FILENAME}


#!/bin/sh
#
# This is what 'sed' needs to do sed-4.8
#
PACKAGE='sed-4.8'
POURL="https://translationproject.org/latest/${PACKAGE}/"
PODIR="/tmp/po_$$"
echo "Writing files to ${PODIR}"
wget --no-verbose --directory-prefix ${PODIR} --no-directories --recursive --level 1 --accept .po --accept .po.1 ${POURL}

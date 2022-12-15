#!/bin/sh
#
# This is what 'sed' needs to do sed-4.8
#
wgetver=$(wget --version)
if [ $? -gt 0 ]; then
  echo "Need wget in PATH to run this test" >&2
  exit 16
fi

PACKAGE='sed'
POURL="https://translationproject.org/latest/${PACKAGE}/"
PODIR="/tmp/po_$$"
mkdir "${PODIR}"
echo "Writing files to ${PODIR}"
wget --no-verbose --directory-prefix ${PODIR} --no-directories --recursive --level 1 --accept .po --accept .po.1 ${POURL}

if [ $? -gt 0 ]; then
  echo "wget failed" >&2
else
  echo "wget succeeded." && [ "${PODIR}x" != "x" ] && rm -r "${PODIR}"
fi

#!/bin/bash
PACKAGENAME=dskymatic
VERSION=`grep version= platform.txt | sed 's/version=//g'`
~rm -f ${PACKAGENAME}-samd-${VERSION}.tar.bz2
bash extras/pack.release.bash
mv samd-${VERSION}.tar.bz2 ${PACKAGENAME}-samd-${VERSION}.tar.bz2
sha256sum ${PACKAGENAME}-samd-${VERSION}.tar.bz2
#!/bin/bash
time=$(date "+%Y%m%d_%H")
filename=fio_${time}.log

echo '------------------------' >> ${filename}
echo '     seq fio start!     ' >> ${filename}
echo '------------------------' >> ${filename}
date >> ${filename}
fio seq.job >> ${filename}

echo '------------------------' >> ${filename}
echo '    rnd64K fio start!   ' >> ${filename}
echo '------------------------' >> ${filename}
date >> ${filename}
fio rnd64K.job >> ${filename}
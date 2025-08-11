#!/bin/bash
time=$(date "+%Y%m%d_%H")
filename=fio_${time}.log

echo '------------------------' >> ${filename}
echo '     seq fio start!     ' >> ${filename}
echo '------------------------' >> ${filename}
date >> ${filename}
fio seq.job >> ${filename}

echo '------------------------' >> ${filename}
echo '   rnd128K_2 fio start!  ' >> ${filename}
echo '------------------------' >> ${filename}
date >> ${filename}
fio rnd128K_2.job >> ${filename}

echo '------------------------' >> ${filename}
echo '   rnd128K_3 fio start!  ' >> ${filename}
echo '------------------------' >> ${filename}
date >> ${filename}
fio rnd128K_3.job >> ${filename}

echo '------------------------' >> ${filename}
echo '   rnd128K_4 fio start!  ' >> ${filename}
echo '------------------------' >> ${filename}
date >> ${filename}
fio rnd128K_4.job >> ${filename}
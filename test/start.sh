MAIN_PATH="/root/disktest/test/"

echo "preparing" >> $MAIN_PATH/status
fio $MAIN_PATH/seqwrite1M.job

echo "start seq write" >> $MAIN_PATH/status
fio $MAIN_PATH/seqwrite64.job > fio.log 2>&1 &

echo "start rnd read" >> $MAIN_PATH/status
fio $MAIN_PATH/rndread.job

echo "start seq read" >> $MAIN_PATH/status
fio $MAIN_PATH/seqread.job 
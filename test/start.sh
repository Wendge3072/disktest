MAIN_PATH="/root/disktest/test/"

echo "start round one" >> $MAIN_PATH/status
fio $MAIN_PATH/seq.job
echo "round one DONE" >> $MAIN_PATH/status

echo "start round two" >> $MAIN_PATH/status
fio $MAIN_PATH/rnd.job
echo "round two DONE" >> $MAIN_PATH/status
MAIN_PATH="/root/disktest/csal_test/"

echo "start round one" >> $MAIN_PATH/prepare/status
fio $MAIN_PATH/prepare/seq.job
echo "round one DONE" >> $MAIN_PATH/prepare/status

echo "start round two" > $MAIN_PATH/prepare/status
fio $MAIN_PATH/prepare/seq.job
echo "round two DONE" >> $MAIN_PATH/prepare/status

echo "start round four" >> $MAIN_PATH/prepare/status
fio $MAIN_PATH/prepare/rnd.job
echo "round four DONE" >> $MAIN_PATH/prepare/status

echo "DONE" >> $MAIN_PATH/prepare/status
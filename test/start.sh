MAIN_PATH="/root/disktest/test/"

echo "start round one" >> $MAIN_PATH/status
fio $MAIN_PATH/seq.job --status-interval=10 --output=fio_output.txt --output-format=json ...
echo "round one DONE" >> $MAIN_PATH/status

echo "start round two" >> $MAIN_PATH/status
fio $MAIN_PATH/rnd.job --status-interval=10 --output=fio_output.txt --output-format=json ...
echo "round two DONE" >> $MAIN_PATH/status
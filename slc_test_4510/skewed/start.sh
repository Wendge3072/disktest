MAIN_PATH="/root/disktest/slc_test_4510/"

# prepare again
fio $MAIN_PATH/prepare/rnd.job

for i in {1..12}
do
    echo "start zipf 0.8 4k iteration $i" > $MAIN_PATH/skewed/status
    fio $MAIN_PATH/skewed/fio_4k_zipf0.8.job > $MAIN_PATH/skewed/results_4k_zipf0.8/ite_$i.result
    echo "zipf 0.8 4k iteration $i DONE" >> $MAIN_PATH/skewed/status
done

for i in {1..12}
do
    echo "start zipf 1.2 4k iteration $i" >> $MAIN_PATH/skewed/status
    fio $MAIN_PATH/skewed/fio_4k_zipf1.2.job > $MAIN_PATH/skewed/results_4k_zipf1.2/ite_$i.result
    echo "zipf 1.2 4k iteration $i DONE" >> $MAIN_PATH/skewed/status
done

for i in {1..12}
do
    echo "start zipf 0.8 64k iteration $i" >> $MAIN_PATH/skewed/status
    fio $MAIN_PATH/skewed/fio_64k_zipf0.8.job > $MAIN_PATH/skewed/results_64k_zipf0.8/ite_$i.result
    echo "zipf 0.8 64k iteration $i DONE" >> $MAIN_PATH/skewed/status
done

for i in {1..12}
do
    echo "start zipf 1.2 64k iteration $i" >> $MAIN_PATH/skewed/status
    fio $MAIN_PATH/skewed/fio_64k_zipf1.2.job > $MAIN_PATH/skewed/results_64k_zipf1.2/ite_$i.result
    echo "zipf 1.2 64k iteration $i DONE" >> $MAIN_PATH/skewed/status
done
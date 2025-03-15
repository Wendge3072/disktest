MAIN_PATH="/root/disktest/slc_test_4510/"

echo "start round one" >> $MAIN_PATH/prepare/status
fio $MAIN_PATH/prepare/seq.job
echo "round one DONE" >> $MAIN_PATH/prepare/status

# test 4k sequntial read for 1 hours
for i in {1..6}
do
    echo "start seq 4k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_4k_r.job > $MAIN_PATH/uniform/results_seq_read_4k/ite_$i.result
    echo "seq 4k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 8k sequntial read for 1 hours
for i in {1..6}
do
    echo "start seq 8k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_8k_r.job > $MAIN_PATH/uniform/results_seq_read_8k/ite_$i.result
    echo "seq 8k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 16k sequntial read for 1 hours
for i in {1..6}
do
    echo "start seq 16k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_16k_r.job > $MAIN_PATH/uniform/results_seq_read_16k/ite_$i.result
    echo "seq 16k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 32k sequntial read for 1 hours
for i in {1..6}
do
    echo "start seq 32k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_32k_r.job > $MAIN_PATH/uniform/results_seq_read_32k/ite_$i.result
    echo "seq 32k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 64k sequntial read for 1 hours
for i in {1..6}
do
    echo "start seq 64k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_64k_r.job > $MAIN_PATH/uniform/results_seq_read_64k/ite_$i.result
    echo "seq 64k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 128k sequntial read for 1 hours
for i in {1..6}
do
    echo "start seq 128k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_128k_r.job > $MAIN_PATH/uniform/results_seq_read_128k/ite_$i.result
    echo "seq 128k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done


# test 4k random read for 1 hours
for i in {1..6}
do
    echo "start rnd 4k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_4k_r.job > $MAIN_PATH/uniform/results_rnd_read_4k/ite_$i.result
    echo "rnd 4k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 8k random read for 1 hours
for i in {1..6}
do
    echo "start rnd 8k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_8k_r.job > $MAIN_PATH/uniform/results_rnd_read_8k/ite_$i.result
    echo "rnd 8k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 16k random read for 1 hours
for i in {1..6}
do
    echo "start rnd 16k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_16k_r.job > $MAIN_PATH/uniform/results_rnd_read_16k/ite_$i.result
    echo "rnd 16k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 32k random read for 1 hours
for i in {1..6}
do
    echo "start rnd 32k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_32k_r.job > $MAIN_PATH/uniform/results_rnd_read_32k/ite_$i.result
    echo "rnd 32k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 64k random read for 1 hours
for i in {1..6}
do
    echo "start rnd 64k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_64k_r.job > $MAIN_PATH/uniform/results_rnd_read_64k/ite_$i.result
    echo "rnd 64k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 128k random read for 1 hours
for i in {1..6}
do
    echo "start rnd 128k read iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_128k_r.job > $MAIN_PATH/uniform/results_rnd_read_128k/ite_$i.result
    echo "rnd 128k read iteration $i DONE" >> $MAIN_PATH/uniform/status
done


echo "start round two" > $MAIN_PATH/prepare/status
fio $MAIN_PATH/prepare/seq.job
echo "round two DONE" >> $MAIN_PATH/prepare/status

echo "start round three" >> $MAIN_PATH/prepare/status
fio $MAIN_PATH/prepare/seq.job
echo "round three DONE" >> $MAIN_PATH/prepare/status

echo "start round four" >> $MAIN_PATH/prepare/status
fio $MAIN_PATH/prepare/rnd.job
echo "round four DONE" >> $MAIN_PATH/prepare/status

echo "DONE" >> $MAIN_PATH/prepare/status
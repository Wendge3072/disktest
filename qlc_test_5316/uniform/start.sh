MAIN_PATH="/root/disktest/qlc_test_5316/"

# prepare again
fio $MAIN_PATH/prepare/seq.job
# fio $MAIN_PATH/prepare/seq.job

# test 4k sequntial write for 1 hours
for i in {1..12}
do
    echo "start seq 4k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_4k_w.job > $MAIN_PATH/uniform/results_seq_write_4k/ite_$i.result
    echo "seq 4k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 8k sequntial write for 1 hours
for i in {1..12}
do
    echo "start seq 8k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_8k_w.job > $MAIN_PATH/uniform/results_seq_write_8k/ite_$i.result
    echo "seq 8k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 16k sequntial write for 1 hours
for i in {1..12}
do
    echo "start seq 16k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_16k_w.job > $MAIN_PATH/uniform/results_seq_write_16k/ite_$i.result
    echo "seq 16k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 32k sequntial write for 1 hours
for i in {1..12}
do
    echo "start seq 32k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_32k_w.job > $MAIN_PATH/uniform/results_seq_write_32k/ite_$i.result
    echo "seq 32k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 64k sequntial write for 1 hours
for i in {1..12}
do
    echo "start seq 64k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_64k_w.job > $MAIN_PATH/uniform/results_seq_write_64k/ite_$i.result
    echo "seq 64k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done    

# test 128k sequntial write for 1 hours
for i in {1..12}
do
    echo "start seq 128k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_seq_128k_w.job > $MAIN_PATH/uniform/results_seq_write_128k/ite_$i.result
    echo "seq 128k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done


# prepare again
fio $MAIN_PATH/prepare/rnd.job
# fio $MAIN_PATH/prepare/rnd.job

# test 4k random write for 1 hours
for i in {1..12}
do
    echo "start rnd 4k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_4k_w.job > $MAIN_PATH/uniform/results_rnd_write_4k/ite_$i.result
    echo "rnd 4k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 8k random write for 1 hours
for i in {1..12}
do
    echo "start rnd 8k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_8k_w.job > $MAIN_PATH/uniform/results_rnd_write_8k/ite_$i.result
    echo "rnd 8k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 16k random write for 1 hours
for i in {1..12}
do
    echo "start rnd 16k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_16k_w.job > $MAIN_PATH/uniform/results_rnd_write_16k/ite_$i.result
    echo "rnd 16k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 32k random write for 1 hours
for i in {1..12}
do
    echo "start rnd 32k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_32k_w.job > $MAIN_PATH/uniform/results_rnd_write_32k/ite_$i.result
    echo "rnd 32k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 64k random write for 1 hours
for i in {1..12}
do
    echo "start rnd 64k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_64k_w.job > $MAIN_PATH/uniform/results_rnd_write_64k/ite_$i.result
    echo "rnd 64k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

# test 128k random write for 1 hours
for i in {1..12}
do
    echo "start rnd 128k write iteration $i" >> $MAIN_PATH/uniform/status
    fio $MAIN_PATH/uniform/fio_rnd_128k_w.job > $MAIN_PATH/uniform/results_rnd_write_128k/ite_$i.result
    echo "rnd 128k write iteration $i DONE" >> $MAIN_PATH/uniform/status
done

echo "uniform test END" > $MAIN_PATH/prepare/status
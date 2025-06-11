MAIN_PATH="."

echo "$(date '+%Y-%m-%d %H:%M:%S') start round one" >> "$MAIN_PATH/prepare/status"
fio $MAIN_PATH/prepare/seq.job
echo "$(date '+%Y-%m-%d %H:%M:%S') round one DONE" >> "$MAIN_PATH/prepare/status"

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

echo "$(date '+%Y-%m-%d %H:%M:%S') start round two" >> "$MAIN_PATH/prepare/status"
fio $MAIN_PATH/prepare/seq.job
echo "$(date '+%Y-%m-%d %H:%M:%S') round two DONE" >> "$MAIN_PATH/prepare/status"

echo "$(date '+%Y-%m-%d %H:%M:%S') start round three" >> "$MAIN_PATH/prepare/status"
fio $MAIN_PATH/prepare/rnd.job
echo "$(date '+%Y-%m-%d %H:%M:%S') round three DONE" >> "$MAIN_PATH/prepare/status"

echo "DONE" >> $MAIN_PATH/prepare/status
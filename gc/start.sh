date > time.txt
fio seq.job

date >> time.txt
fio rnd2.job > rnd2.txt 2>&1 &

date >> time.txt
fio rnd3.job > rnd3.txt 2>&1 &

date >> time.txt
fio rnd4.job > rnd4.txt 2>&1 &
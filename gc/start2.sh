date > time.txt
fio seq.job
date >> time.txt
fio rnd.job
date >> time.txt
sleep 1800
date >> time.txt
fio rnd2.job
echo "DONE" >> time.txt
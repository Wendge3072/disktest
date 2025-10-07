date > time.txt
fio rnd.job

date >> time.txt
fio rnd2.job

date >> time.txt
fio rnd3.job

date >> time.txt
fio rnd64.job

sleep 600

echo "start limit jobs" >> time.txt

date >> time.txt
fio rnd64lim1.job

sleep 300

date >> time.txt
fio rnd64lim2.job

sleep 300

date >> time.txt
fio rnd64lim3.job

sleep 300

date >> time.txt
fio rnd64lim4.job

sleep 300

date >> time.txt
fio rnd64lim5.job

sleep 300

date >> time.txt
fio rnd64lim6.job

sleep 300

date >> time.txt
fio rnd64lim7.job
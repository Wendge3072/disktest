date > time.txt
fio seq.job

date >> time.txt
fio rnd.job > rnd.txt 2>&1 &

echo "FIO started" >> time.txt

sleep 3600

echo "Pausing FIO..." >> time.txt
pkill -STOP fio

sleep 1800

echo "Resuming FIO..." >> time.txt
pkill -CONT fio

echo "FIO finished." >> time.txt
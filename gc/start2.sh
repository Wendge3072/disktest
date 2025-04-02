date > time.txt
fio seq.job

date >> time.txt
fio rnd.job &

FIO_PID=$!
echo "FIO started with PID: $FIO_PID" >> time.txt

sleep 60

echo "Pausing FIO..." >> time.txt
kill -STOP $FIO_PID

sleep 60

echo "Resuming FIO..." >> time.txt
kill -CONT $FIO_PID

wait $FIO_PID
echo "FIO finished." >> time.txt
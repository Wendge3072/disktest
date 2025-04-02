date > time.txt
fio seq.job

date >> time.txt
fio rnd.job &

FIO_PID=$!
echo "FIO started with PID: $FIO_PID"

sleep 3600

echo "Pausing FIO..."
kill -STOP $FIO_PID

echo "Resuming FIO..."
kill -CONT $FIO_PID

wait $FIO_PID
echo "FIO finished."
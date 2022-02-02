python3 run_for_test.py &
serverPID=$!

sleep 5

curl -XGET http://localhost:5000/ > out.txt

case `grep -Fx "Hello AWS!!!" "out.txt" >/dev/null; echo $?` in
  0)
    # code if found
    echo "Test result: SUCCESS!"
    ;;
  1)
    # code if not found
    echo "Test result: FAILED!"
    exit 1
    ;;
  *)
    # code if an error occurred
    echo "Test result: FAILED!"
    exit 2
    ;;
esac

kill $serverPID

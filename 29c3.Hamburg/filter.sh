while read N; do echo $N | awk -F, '$11 ~ /$FILTER/{print $8}';  done < hochschulen.germany.csv | sort > unis.txt
python2 ./plz_draw --heigth=7000 --width=5000 --read=unis.txt uni.jpg --digits=2 -c 0 -a

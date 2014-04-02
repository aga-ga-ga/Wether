read time < time.in

while true; do
  wget http://pogoda.tut.by/ -O weather.html 2> /dev/null
  grep -m 1 '<span class="temp-i">' weather.html > temp
	echo $(sed 's/[^\-\+0-9]//g' temp)
  sleep $time
done


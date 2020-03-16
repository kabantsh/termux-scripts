#!/data/data/com.termux/files/usr/bin/bash
pinging() {
echo "pinging 8.8.8.8"
for i in {1..1000}
do
ping -c 1 8.8.8.8 && termux-tts-speak "Internet is Ok Mr. Mohammed Ayman"
sleep 3
done
}

# Infinite Loop 
j=1
while [[ j -le 3 ]]
do
	pinging 
	sleep 3
done

FROM ubuntu:18.10
RUN apt-get -y update && apt-get install -y sudo && apt-get install -y wget && sudo apt -y install vnc4server && 
RUN sudo apt install xfce4 xfce4-goodies -y && sudo vncserver -geometry 1560x768
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip&& unzip *.zip
RUN ./ngrok authtoken 8aaUkXA7J1WHozLfXVbNB_3hZ5WsuJUQFVsgmfXj2mQ
RUN ./ngrok tcp 5901

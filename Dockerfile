FROM debian

ENV TEMP=60

RUN apt-get -qq update && apt-get -qq -y install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev libz-dev make g++ git \

  && git clone https://github.com/tbauer516/cpuminer-multi.git miner \
  && cd miner \
  && ./build.sh \

  && export THR=$(grep -c ^processor /proc/cpuinfo)

WORKDIR miner

ENTRYPOINT ./cpuminer -a $ALGO -o $POOLADDRESS -u "${UNAME:+"$UNAME."}$WNAME" -p $WPASS --threads=$THR --max-temp=$TEMP

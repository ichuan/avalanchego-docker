FROM debian:9
WORKDIR /opt/coin
RUN apt update && apt install -y wget
RUN wget https://github.com/ava-labs/avalanchego/releases/download/v1.0.3/avalanchego-linux-v1.0.3.tar.gz -O - | tar -C /opt/coin --strip-components 1 -xzf -
CMD ["-api-ipcs-enabled", "-http-host=0.0.0.0"]
# cleanup
RUN apt autoremove -y && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/opt/coin/avalanchego"]

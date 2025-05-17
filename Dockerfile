FROM kasmweb/core-ubuntu-focal:1.14.0

RUN apt-get update && \
    apt-get install -y scummvm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER kasm-user
WORKDIR /home/kasm-user
CMD ["scummvm"]

FROM swift:latest

RUN apt update && \
    apt upgrade -y && \
    apt install -y git

RUN mkdir -p /home/others

RUN cd /home/others && \
    git clone https://github.com/BMilliet/aloha.git && \
    cd aloha/aloha && \
    swift build -c release

ENV PATH="${PATH}:/home/others/aloha/aloha/.build/release"

RUN mkdir -p /home/user/app
WORKDIR /home/user/app

CMD ["aloha"]

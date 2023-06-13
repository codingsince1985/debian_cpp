FROM debian:bookworm-slim

RUN apt update

RUN apt install -y curl git zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; exit 0
RUN sed -i 's/"robbyrussell"/"af-magic"/g' /root/.zshrc

RUN apt install -y build-essential vim

RUN apt install -y python-is-python3 python3-pip

WORKDIR /cpp

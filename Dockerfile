FROM ubuntu:22.04

RUN apt update
RUN apt install -y sudo curl zsh

RUN curl -fsSL https://code-server.dev/install.sh | sh

RUN useradd -ms /bin/bash newuser

USER newuser

CMD [ "code-server", "--bind-addr", "0.0.0.0:8080" ]
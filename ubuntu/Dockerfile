FROM ubuntu:latest

# ENV DEBIAN_FRONTEND noninteractive

# RUN apt-get update && apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages \
#    python3 python3-pip curl wget git wkhtmltopdf libssl1.1 vim nmap tzdata
RUN apt-get update && apt-get install -y openssh-server && systemctl enable ssh

# workdir for ssh
RUN mkdir -p /run/sshd

# allow root to login
RUN echo 'root:RedTeam' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config


EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-o", "ListenAddress=0.0.0.0"]
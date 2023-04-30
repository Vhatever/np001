FROM ubuntu:latest


RUN apt-get update && apt-get -y install curl sendmail
RUN apt-get update && apt-get -y install coreutils

COPY check_status.sh /usr/local/bin/check_status.sh
RUN chmod +x /usr/local/bin/check_status.sh

CMD ["bash", "-c", "while true; do /usr/local/bin/check_status.sh; sleep 30; done"]

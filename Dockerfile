FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y ca-certificates gnupg2 wget libasound2

# Add to sources
RUN echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | \
    tee -a /etc/apt/sources.list.d/insomnia.list

# Add public key used to verify code signature
RUN wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | \
    apt-key add -

# Refresh repository sources and install Insomnia
RUN apt-get clean
RUN apt-get update
RUN apt-get upgrade -y --fix-missing
RUN apt-get install -y insomnia

WORKDIR /data
CMD insomnia

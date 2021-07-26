FROM alpine:latest
WORKDIR /
RUN apk update && apk add git bash alpine-sdk cmake 
RUN git clone https://github.com/audeering/opensmile.git
WORKDIR /opensmile
RUN bash build.sh
WORKDIR /opensmile/build/progsrc/smilextract
RUN make && make install
WORKDIR /workspace
COPY ./command.sh /
RUN chmod 744 /command.sh
WORKDIR /workspace
CMD ["/command.sh"]
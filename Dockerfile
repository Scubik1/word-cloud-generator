FROM alpine:3.17
COPY ./artifacts/linux/word-cloud-generator /opt
EXPOSE 8888
ENTRYPOINT sh
#ENTRYPOINT /opt/word-cloud-generator

FROM alpine:3.17
COPY ./artifacts/linux/wordcloud-generator /opt
EXPOSE 8888
ENTRYPOINT /opt/word-cloud-generator

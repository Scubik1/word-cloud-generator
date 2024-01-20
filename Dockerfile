FROM alpine:3.17
RUN apk add gcompat
COPY --chown=root:root --chmod=755 ./artifacts/linux/word-cloud-generator /opt
EXPOSE 8888
#ENTRYPOINT sh
ENTRYPOINT /opt/word-cloud-generator

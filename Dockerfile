FROM alpine:3.17
COPY --chown=root:root --chmod=755 ./artifacts/linux/word-cloud-generator /opt
EXPOSE 8888
ENTRYPOINT /opt/word-cloud-generator

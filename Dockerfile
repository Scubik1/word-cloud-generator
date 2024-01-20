FROM alpine:3.17
RUN apk add gcompat
#COPY --chown=root:root --chmod=755 ./artifacts/linux/word-cloud-generator /opt
COPY --chmod=755 ./artifacts/linux/word-cloud-generator /opt/word-cloud-generator
RUN cmod +x /opt/word-cloud-generator
RUN ls -lah /opt 
EXPOSE 8888
#ENTRYPOINT sh
ENTRYPOINT /opt/word-cloud-generator

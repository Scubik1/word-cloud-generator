FROM alpine:3.17
RUN apk add --no-cache gcompat=1.1.0-r0
#COPY --chown=root:root --chmod=755 ./artifacts/linux/word-cloud-generator /opt
COPY ./artifacts/linux/word-cloud-generator /opt/word-cloud-generator
RUN chmod +x /opt/word-cloud-generator
RUN ls -lah /opt 
EXPOSE 8888
#ENTRYPOINT sh
ENTRYPOINT /opt/word-cloud-generator

FROM python:3.10-slim

# Copy the run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

RUN apk add --no-cache jq curl
RUN curl -L -o /usr/bin/bashio https://github.com/hassio-addons/bashio/releases/download/v0.16.2/bashio
RUN chmod +x /usr/bin/bashio

CMD [ "/run.sh" ]
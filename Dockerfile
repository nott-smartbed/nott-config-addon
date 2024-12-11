FROM homeassistant/amd64-base:latest

# Copy the run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
FROM python
RUN groupadd -r appuser && \
useradd --no-log-init -r -g appuser appuser
RUN echo "2123244f297a57awdwdfwwe4a801fc3" > /run/secrets/secret.txt
COPY ./src /app
WORKDIR /app
USER appuser
CMD ["python", "server.py"]

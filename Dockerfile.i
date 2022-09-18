FROM python
ENV user_pass="p4ssw0rd"
RUN groupadd -r appuser && \
useradd --no-log-init -r -g appuser appuser
RUN echo "appuser:$user_pass" | chpasswd
COPY ./src /app
WORKDIR /app
USER appuser
CMD ["python", "server.py"]

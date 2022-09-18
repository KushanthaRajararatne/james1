FROM python
RUN groupadd -r appuser && \
useradd --no-log-init -r -g appuser appuser
RUN echo "appuser: psswrd" | chpasswd
COPY ./src /app
WORKDIR /app
USER appuser
CMD ["python", "server.py"]

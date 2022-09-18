FROM python
RUN groupadd -r appuser && \
useradd --no-log-init -r -g appuser appuser
COPY . /app
WORKDIR /app
CMD ["python", "server.py"]

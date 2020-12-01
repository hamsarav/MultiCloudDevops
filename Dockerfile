FROM python:3.8-slim
COPY . /app
WORKDIR /app
EXPOSE 8080
COPY requirements.txt .
RUN pip install -qr requirements.txt
COPY unary_server.py .
CMD ["python", "./unary_server.py"]

FROM python:3.8-slim
ENV PYTHONUNBUFFERED True
ADD requirements.txt .
RUN pip3 install -r requirements.txt
RUN mkdir /app
WORKDIR /app
ADD /app/. .

EXPOSE $PORT


ENTRYPOINT ["python3", "main.py"]
FROM python:3.10.8
WORKDIR /app
COPY ./ /app
ENV PYTHONUNBUFFERED=1
COPY requirements.txt .
RUN apt-get update && apt-get -y upgrade
RUN pip3 install -r requirements.txt
RUN apt-get install -y --no-install-recommends ffmpeg
CMD python3 bot.py

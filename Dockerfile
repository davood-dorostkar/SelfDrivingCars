FROM python:3.6.15-slim-bullseye
RUN apt-get update && apt-get install python3-pygame python3-tk ffmpeg libsm6 libxext6  -y
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
# RUN pip install pygame matplotlib==2.2.5
# RUN pip install tkinter
RUN rm -rf requirements.txt /var/lib/apt/lists/*
RUN apt-get autoclean && apt-get autoremove
ENV PYTHONPATH /opt/carla/v0.8.4/PythonClient
WORKDIR /home
CMD [ "/bin/bash" ]
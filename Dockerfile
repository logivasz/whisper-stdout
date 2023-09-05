FROM python:3.9.16-bullseye
WORKDIR /app
ADD . /app

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r requirements.txt
#for the latest version
#RUN pip install --upgrade --no-deps --force-reinstall git+https://github.com/openai/whisper.git


# Run the app
#CMD uvicorn main:app --host 0.0.0.0 --port 8000

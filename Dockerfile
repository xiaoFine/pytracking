FROM pytorch/pytorch:1.3-cuda10.1-cudnn7-devel

WORKDIR /app
COPY requirements.txt .
RUN apt-get update && apt-get install ninja-build \
    libturbojpeg
RUN pip install -r requirements.txt

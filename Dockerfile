FROM continuumio/anaconda3

RUN apt-get update
RUN apt-get install -y build-essential python3 python3-pip
RUN apt-get install -y wget
RUN conda create -n env python=3.7 -y

ENV PATH=/opt/conda/envs/env/bin:$PATH
ENV CONDA_DEFAULT_ENV=env

RUN apt-get update
LABEL org.opencontainers.image.authors="rajesh@getzuma.com"

COPY . /opt
WORKDIR /opt
RUN  apt-get update
RUN pip3 install --no-cache-dir -r requirements.txt
# RUN pip3 install "uvicorn[standard]" gunicorn

# RUN apt-get update && \
#     apt-get install -y openjdk-11-jre-headless && \
#     apt-get clean;

EXPOSE 5000
# CMD ["gunicorn", "app.main:app", "--workers", "1", "--timeout", "0", "--worker-class", "uvicorn.workers.UvicornH11Worker", "--bind", "0.0.0.0:5000"]
CMD ["python", "app.py"]
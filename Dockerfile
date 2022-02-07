FROM python:3.10

MAINTAINER Nariman Huseynov "hnariman@gmail.com"

WORKDIR /server
COPY ./requirements.txt /server/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /server/requirements.txt

COPY . /server/
CMD ["uvicorn", "server:app", "--host","0.0.0.0", "--port", "4343"]

FROM ubuntu

RUN apt-get update

RUN apt install python3 python3-pip -y

RUN pip install flask
RUN pip install flask-mysql

COPY . /opt/sourcecode

ENTRYPOINT FLASK APP=/opt/source-code/app.py flask run

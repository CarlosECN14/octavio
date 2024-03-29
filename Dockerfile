FROM python:3

RUN mkdir -p /opt/services/flaskapp/src
RUN mkdir -p /opt/services/flaskapp/src/data
COPY requirements.txt /opt/services/flaskapp/src
WORKDIR /opt/services/flaskapp/src
RUN pip install -r requirements.txt
COPY . /opt/services/flaskapp/src
EXPOSE 7979
CMD ["python", "server.py"]
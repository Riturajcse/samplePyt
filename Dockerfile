FROM python:2.7-wheezy

RUN pip install --upgrade pip
COPY requirements/requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY . /app
WORKDIR /app

EXPOSE 31005

CMD ["python", "main.py"]

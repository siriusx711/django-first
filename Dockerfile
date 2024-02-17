FROM python:3.10.0

ENV PYTHONBUFFERED 1

RUN mkdir /app

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip
RUN pip install gunicorn
RUN pip install -r requirements.txt

COPY ./requirements.txt .

CMD ["gunicorn", "--config", "gunicorn/conf.py", "--bind", "0.0.0.0:80", "xdjango.wsgi:application"]
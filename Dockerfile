FROM python:3.7

ENV PYTHONUNBUFFERED 1
WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)"

CMD python manage.py runserver 0.0.0.0:8000

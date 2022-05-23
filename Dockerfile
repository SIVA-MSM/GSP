FROM python:3.8
LABEL maintainer="sivaprasad"
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /GSP
COPY . /GSP
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8000
CMD python manage.py runserver

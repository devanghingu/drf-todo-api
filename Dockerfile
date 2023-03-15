FROM python:3
RUN pip install django==3.1.0
RUN pip install djangorestframework==3.11.0
COPY . .

RUN python manage.py migrate
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]



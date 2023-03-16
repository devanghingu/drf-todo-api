FROM python:3
RUN pip install django==3.1.0
RUN pip install djangorestframework==3.11.0
COPY . .

EXPOSE 8000
CMD ["bash","run.sh"]
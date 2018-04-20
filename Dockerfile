FROM python:3.6

RUN mkdir -p /code

WORKDIR /code

COPY requirements ./requirements/

RUN pip install --no-cache-dir -r requirements/dev.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000" , "--settings=docker_settings"]
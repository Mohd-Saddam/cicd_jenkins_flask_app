FROM python:3.11-alpine
RUN apk update && apk add --no-cache build-base
COPY . /flask_api

WORKDIR /flask_api

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5001

CMD [ "python","app.py" ]

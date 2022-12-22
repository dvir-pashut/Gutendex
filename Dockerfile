FROM python:3.9
WORKDIR /app
COPY /gutendex /app
RUN pip install -r requirements.txt
COPY enterypoint.sh .
RUN ./enterypoint.sh

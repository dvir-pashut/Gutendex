FROM python:3.9 
RUN apt-get update 
RUN apt-get install rsync -y
WORKDIR /app
COPY /gutendex /app
RUN pip install -r requirements.txt
COPY enterypoint.sh .
ENTRYPOINT [ "./enterypoint.sh" ]
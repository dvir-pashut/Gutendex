FROM python:3.9-alpine3.17
# RUN apt-get update 
# RUN apt-get install rsync -y
RUN apk add rsync
WORKDIR /app
COPY /gutendex /app
RUN pip install -r requirements.txt
COPY enterypoint.sh .
ENTRYPOINT [ "./enterypoint.sh" ]



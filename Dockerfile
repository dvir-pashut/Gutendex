FROM python:3.9
RUN apt-get update 
RUN apt install rysinc 
WORKDIR /app
COPY /gutendex /app
RUN pip install -r requirements.txt
COPY enterypoint.sh .
#ENTRYPOINT [ "./enterypoint.sh" ]

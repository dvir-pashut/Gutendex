FROM python:3.9
RUN apt-get updtae && apt install rysinc -y 
WORKDIR /app
COPY /gutendex /app
RUN pip install -r requirements.txt
COPY enterypoint.sh .
#ENTRYPOINT [ "./enterypoint.sh" ]

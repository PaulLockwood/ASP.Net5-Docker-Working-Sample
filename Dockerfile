FROM microsoft/aspnet

COPY project.json /app/

WORKDIR /app

RUN ["kpm", "restore"]

COPY . /app

EXPOSE 5004

ENTRYPOINT ["k", "kestrel"]

# In this folder:
# sudo docker build -t myapp .
# sudo docker run -t -d -p 80:5004 myapp /port=5004


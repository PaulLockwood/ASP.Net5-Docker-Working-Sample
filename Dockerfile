FROM microsoft/aspnet

COPY project.json /app/

WORKDIR /app

RUN ["dnu", "restore"]

COPY . /app

EXPOSE 5004

ENTRYPOINT ["dnx", ".", "kestrel"]

# In this folder:
# sudo docker build -t myapp .
# sudo docker run -t -d -p 80:5004 myapp /port=5004


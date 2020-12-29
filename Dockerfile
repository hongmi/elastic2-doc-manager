From python:3.8

WORKDIR /app

COPY . /app


## TODO: use https://github.com/hongmi/mongo-connector for ignore unicode decode error


RUN pip install -e ".[elastic6]"


EXPOSE 8000

CMD ["mongo-connector", "-c", "config.json", "--stdout"]
# CMD [ "python3", "-m", "http.server" ]

# docker build -t mongo-connector-i .
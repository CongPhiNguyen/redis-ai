FROM redis:latest

RUN apt-get update && apt-get install -y python python-pip

RUN pip install redis-ml

CMD ["redis-server", "--loadmodule", "/usr/local/lib/redis/modules/redis-ml.so"]

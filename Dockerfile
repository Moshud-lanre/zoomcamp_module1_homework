FROM python:3.9.1 

RUN apt-get install wget 

RUN pip install  pandas sqlalchemy  pyarrow psycopg2 

WORKDIR /app 

COPY data_ingest.py data_ingest.py 

ENTRYPOINT [ "python", "data_ingest.py" ] 
# Project: Docker Postgres Database with Terraform Cloud Resources

Overview

This project demonstrates how to set up a Postgres database using Docker and create cloud resources using Terraform. The goal is to provide a scalable and efficient way to manage database infrastructure.

## Prerequisites

- Docker installed on your machine
- Terraform installed on your machine
- GCP account

## Project Structure

├── terraform
│   ├── main.tf
│   ├── provider.tf
│   └── variables.tf
├── answer.txt
├── data_ingest.py
├── docker-compose.yml
├── Dockerfile
└── README.md

## Postgres database setup

Run `docker-compose up -d`

Note: Kindly replace the following variables with yours in the docker-compose file before running the command above

     ${POSTGRES_USER}
    ${POSTGRES_PASSWORD}

## To load ingest data into the postgres database

1. Run `docker build -t data_ingest:v1 .` to build an image from data_ingest.py file.

2. Run `docker run  -it --network=<replace_with_yours> data_ingest:v1 --user=<replace_with_yours> --password=<replace_with_yours> --host=pg_db --port=5432 --db=green_taxi --tb=green_taxi --url=https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2019-10.parquet` to ingest data of New york's green taxi trips for the month of October 2019.
    Note: kindly replace --network value with was created when you ran docker-compose above.

3. Run `docker run  -it --network=<replace_with_yours> data_ingest:v1 --user=<replace_with_yours> --password=<replace_with_yours> --host=pg_db --port=5432 --db=green_taxi --tb=green_taxi --url=https://d37ci6vzurychx.cloudfront.net/misc/taxi_zone_lookup.csv` to ingest data of New york's taxis zones.

## Anlytic questions to answer

1. During the period of October 1st 2019 (inclusive) and November 1st 2019 (exclusive), how many trips, respectively, happened:

Up to 1 mile
In between 1 (exclusive) and 3 miles (inclusive),
In between 3 (exclusive) and 7 miles (inclusive),
In between 7 (exclusive) and 10 miles (inclusive),
Over 10 miles.

2.Which was the pick up day with the longest trip distance? Use the pick up time for your calculations.

    Tip: For every day, we only care about one single trip with the longest distance.

3. Which were the top pickup locations with over 13,000 in total_amount (across all trips) for 2019-10-18?

    Consider only lpep_pickup_datetime when filtering by date.

4. For the passengers picked up in Ocrober 2019 in the zone name "East Harlem North" which was the drop off zone that had the largest tip?

    Note: it's tip , not trip

    We need the name of the zone, not the ID.

## Terraform

Run  the following commands sequentially
`terraform init`

`terraform plan`

`terraform apply`

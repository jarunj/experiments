To run this demo:
Download confluentinc-kafka-connect-protobuf-converter-7.0.1.zip from https://www.confluent.io/hub/confluentinc/kafka-connect-protobuf-converter to the base path

- term A:> docker-compose up mysql schema

- term B:>docker-compose up -d --build connect

- term C:> docker exec -it kafka /bin/bash
 > cd /opt/bitnami/kafka
 > ./bin/kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic mysql --from-beginning


- Open mysql client connecting to localhost:3306 to make changes


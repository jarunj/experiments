#!/bin/bash -e

# connector start command here.
exec "/opt/kafka/bin/connect-standalone.sh" "/opt/kafka/config/connect.properties" "/opt/kafka/config/connect-source-mysql.properties" 

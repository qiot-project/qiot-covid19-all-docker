#!/bin/bash

set -x
set -e

# To speed up the development cycle, this builds the container images in NON native mode

# Default profile: dev
IPROFILE="${PROFILE:-dev}"

cd ../qiot-datahub-localization/
mvn clean package install -Dquarkus.profile=$IPROFILE

cd ../qiot-datahub-station/
mvn clean package install -Dquarkus.profile=$IPROFILE

cd ../qiot-datahub-registration/
mvn clean package install -Dquarkus.profile=$IPROFILE

cd ../qiot-datahub-query/
mvn clean package install -Dquarkus.profile=$IPROFILE

cd ../qiot-datahub-collector/
mvn clean package install -Dquarkus.profile=$IPROFILE

cd ../qiot-datahub-storer/
mvn clean package install -Dquarkus.profile=$IPROFILE

cd ../qiot-datahub-importer/
mvn clean package install -Dquarkus.profile=$IPROFILE

cd ../qiot-edge-sensors-emulator/
mvn clean package install -Dquarkus.profile=$IPROFILE

cd ../qiot-edge-service/
mvn clean package install -Dquarkus.profile=$IPROFILE


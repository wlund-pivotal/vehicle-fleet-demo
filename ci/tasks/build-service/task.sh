#!/bin/bash
set -e

pushd vehicle-fleet-demo
    ./mvnw clean install
popd

mkdir build-output/libs

cp fleet-location-service/target/fleet-location-service-1.0.0.BUILD-SNAPSHOT.jar build-output/
cp fleet-location-simulator/target/fleet-location-simulator-1.0.0.BUILD-SNAPSHOT.jar build-output/
cp fleet-location-ingest/target/fleet-location-ingest-1.0.0.BUILD-SNAPSHOT.jar build-output/
cp fleet-location-updater/target/fleet-location-updater-1.0.0.BUILD-SNAPSHOT.jar build-output/
cp service-location-service/target/service-location-service-1.0.0.BUILD-SNAPSHOT.jar build-output/
cp dashboard/target/dashboard-1.0.0.BUILD-SNAPSHOT.jar build-output/

cp manifest.yml build-output/

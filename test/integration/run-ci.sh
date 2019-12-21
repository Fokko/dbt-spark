#!/usr/bin/env bash

apt-get update && apt-get -y install libsasl2-modules libsasl2-dev nano netcat

pip install thrift_sasl sasl

mkdir -p ~/.dbt/ && cp test/integration/profiles.yml ~/.dbt/profiles.yml

pip install -r dev_requirements.txt
pip install -e .

cd dbt-integration-tests
pip install -r requirements.txt

./bin/run-with-profile local
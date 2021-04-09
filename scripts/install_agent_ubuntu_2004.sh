#!/bin/bash

printf "deb [arch=amd64] https://download.newrelic.com/infrastructure_agent/linux/apt focal main" | sudo tee -a /etc/apt/sources.list.d/newrelic-infra.list

curl -s https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo apt-key add -

printf "license_key: LICENSE_HERE\nverbose: 1\nstaging: true\nlog_file: /var/log/newrelic-infra/newrelic-infra.log\n" | sudo tee -a /etc/newrelic-infra.yml

sudo apt-get update

sudo apt-get install newrelic-infra
FROM opensuse/leap:latest

RUN zypper install -y curl \
    wget

RUN curl https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg -s | gpg --import
RUN curl -o /etc/zypp/repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/zypp/sles/12.4/x86_64/newrelic-infra.repo

RUN zypper --gpg-auto-import-keys ref -r newrelic-infra

RUN zypper install -y newrelic-infra

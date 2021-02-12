# This repo contains some tools to spin new VMs


### How to use this repo

### 1. Install vagrant [official guide](https://www.vagrantup.com/docs/installation)
### 2. Install GnuMake [brew installation](https://formulae.brew.sh/formula/make)
### 3. Run make targets to spin new hosts

- `make up/ccntos7` will create new CentOS 7 Virtual box
- `make ssh/centos7` will connect current shell into CentOS 7 box
- `make destroy/centos7` will remove CentOS 7 box **without any prompt**

### List of supported OSs
- CentOS 6.10 `centos610`
- CentOS 7 `centos7`
- CentOS 8 `centos8`
- Ubuntu 20.04 (focal) `ubuntu2004`
- Ubuntu 20.10 (groovy) `ubuntu2010`

### Ideas/Thoughts

- vagrant as OS provision tool
- ansible on host to manage vagrant boxes internals (treat vagrantbox as remote server)
- make -> vagrantfile 
- make -> ansible role pointed to vagrantbox
- make install/agent centos6.10 VERSION=1.15.1
- make install/nri-nginx centos6.10 VERSION=1.15.1

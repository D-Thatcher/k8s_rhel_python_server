# K8s sample RHEL Python web app deployment configuration

## Overview
A sample K8s Python server deployment configuration that prioritizes security and extensibility. The Python app is built in a hardened RHEL UBI v9 image and the Pod configuration follows K8s security best practices.
<br/>

You can customize the seccomp profile in `./profiles/seccomp-profile.json` and add it in the `seccompProfile` block in the `app.yaml`


## Getting started
- Ensure `docker`, `kind`, and `kubectl` are installed on your machine
- Run `bash scripts/build.sh` to build the docker image and set-up a local `kind` cluster with the configuration
- You can customize the Python server in `./app/backend` 
- Run `bash scripts/clean.sh` to remove the `kind` cluster

### Acknowledgements
- The hardened RHEL Python image is a slightly modified version of this one: https://repo1.dso.mil/dsop/redhat/python/python39-ubi9

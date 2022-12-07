# Ansible/Python Development Docker Container

This is a docker container I use for Ansible and Python development.

## Consuming

Python libraries are defined in `requirements.txt`

`docker build -t ubuntu_ansible .` to build the image

`docker run -it ubuntu_ansible:latest` to run the image interactively.

## Future

Ability to consume this Dockerfile via Packer.

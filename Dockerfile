FROM ubuntu:22.04

ARG USERNAME=ansible
RUN useradd --create-home $USERNAME

ENV ANSIBLE_HOST_KEY_CHECKING=False
ENV ANSIBLE_RETRY_FILES_ENABLED=False
ENV ANSIBLE_PYTHON_INTERPRETER=/usr/local/bin/python
ENV ANSIBLE_CALLABLE_WHITELIST=profile_tasks

COPY requirements*.txt /home/$USERNAME/

RUN apt update
RUN apt install -y python3 python3-pip git

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip install --upgrade pip \
    && pip install --upgrade virtualenv \
    && pip install -r /home/$USERNAME/requirements.txt

RUN mkdir -p /data/
WORKDIR /data

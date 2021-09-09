FROM jupyter/minimal-notebook

ENV ENV DEBIAN_FRONTEND=noninteractive

USER root
RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN apt update && apt install --no-install-recommends -y curl
COPY ./requirements.txt /requirements.txt
RUN rm -rf /var/lib/apt/lists/*
COPY ./jupyter_notebook_config.json /home/jovyan/.jupyter/jupyter_notebook_config.json
RUN chown -R jovyan /home/jovyan/.jupyter/

WORKDIR /home/jovyan/work
USER jovyan
RUN pip install -r /requirements.txt
# Jupyter boilerplate

Os noteboks ficam em notebook e caso tenha algum aquivo é só colocar em data.

### Dependencias
Só adicionar no requiriments.txt e rodar o comando;

    docker-compose up -d --build jupyter_notebook

### Comandos
Subir o jupyter_notebook
    
    docker-compose up -d --build jupyter_notebook

Derrubar o jupyter_notebook
    
    docker-compose down

Caso precise mudar a senha (default é 123);
    
    docker-compose run jupyter_notebook jupyter notebook password
    
    docker-compose up -d --build jupyter_notebook

## Dependencias
- docker
    - https://docs.docker.com/engine/install/

- docker-compose
    - https://docs.docker.com/compose/install/
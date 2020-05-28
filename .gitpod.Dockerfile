FROM gitpod/workspace-mysql:latest

# install python3-dev to make sure the pip package "mysqlclient" works fine.
USER root
RUN npm i heroku -g

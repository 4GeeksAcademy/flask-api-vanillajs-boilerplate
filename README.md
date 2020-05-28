# Flask Boilerplate for Profesional Development

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/from-referrer/)

## Features

- Extensive documentation [here](https://github.com/4GeeksAcademy/flask-api-vanillajs-boilerplate/tree/master/docs).
- Support for Front-End vanillajs and backend Flask API
- Integrated with Pipenv for package managing.
- Fast deloyment to heroku with `$ pipenv run deploy`.
- Use of `.env` file (persistent enviromental variables).
- SQLAlchemy integration for database abstraction.

## How to Start the Project?

**Back-End**: There is an example API working with an example database. All your API code should be written inside the `./src/api` folder.

- src/api/routes.py (it's where your endpoints should be coded)
- src/api/models.py (your database tables and serialization logic)
- src/api/utils.py (some reusable classes and functions)

All your application endpoints will be published under the `./api/` sub-path, for example:

```bash
POST /people   → will become →   POST /api/people
```

**Front-End**: All your front-end code mus go inside `./src/front` and the entry javascript file is located at `src/front/js/index.js`.

- src/front/style/style.css (your front end styles)
- src/front/js/index.js (entry file for your js application)
- src/front/index.html (the main HTML, it will be displayed on the default path `/`)

For a more detailed explanation, look for the tutorial inside the `docs` folder.

## Remember to migrate every time you change your models

You have to migrate and upgrade the migrations for every update you make to your models:
```
$ pipenv run migrate (to make the migrations)
$ pipenv run upgrade  (to update your databse with the migrations)
```


# Manual Installation for Ubuntu & Mac

⚠️ Make sure you have `python 3.6+` and `MySQL` installed on your computer and MySQL is running, then run the following commands:
```sh
$ pipenv install (to install pip packages)
$ pipenv run migrate (to create the database)
$ pipenv run start (to start the flask webserver)
```


## Deploy to Heroku

This template is 100% compatible with Heroku[https://www.heroku.com/], just make sure to understand and execute the following steps:

```sh
// Install heroku
$ npm i heroku -g
// Login to heroku on the command line
$ heroku login -i
// Create an application (if you don't have it already)
$ heroku create <your_application_name>
// Add python to the heroku server
$ heroku buildpacks:add --index 1 heroku/python
// add node.js capabilities to heroku to be able to use npm on production
$ heroku buildpacks:add --index 2 heroku/nodejs
// Commit and push to heroku (commited your changes)
$ git push heroku master
```
:warning: For a more detailed explanation on working with .env variables or the MySQL database [read the full guide](https://github.com/4GeeksAcademy/flask-rest-hello/blob/master/docs/DEPLOY_YOUR_APP.md).

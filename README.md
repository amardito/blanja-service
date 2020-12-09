# blanja-service

this repository is an API service for handle request or respond on blanja app 

## dependencies

this is list of require dependencies

 ```
 "dependencies": {
    "bcrypt": "^5.0.0",
    "body-parser": "^1.19.0",
    "cors": "^2.8.5",
    "dotenv": "^8.2.0",
    "express": "^4.17.1",
    "jsonwebtoken": "^8.5.1",
    "morgan": "^1.10.0",
    "multer": "^1.4.2",
    "mysql": "^2.18.1",
    "nodemon": "^2.0.6"
  }
 ```

## .env file

create a new file and rename that file to .env , put this file on
main directory

```
PATH_ENDPOINT = "/api/v1"
PORT = "8000"
MYSQL_HOST = "localhost"
MYSQL_USER = "user"
MYSQL_PASS = "password"
MYSQL_DATABASE = "database"
KEY = "token secret key"
```
## how to install

- clone this repo
- add .env file
- npm i / yarn install (for installing dependencies)

## documentation

you can find documentation on postman link collection bellow

https://documenter.getpostman.com/view/9503318/TVewYPfj

# blanja-service

this repository is an API service for handle request or respond on blanja app 

## dependencies

this is list of require dependencies

 ```
 "dependencies": {
    "config": "^3.3.2",
    "dotenv": "^8.2.0",
    "express": "^4.17.1",
    "morgan": "^1.10.0",
    "mysql": "^2.18.1",
    "nodemon": "^2.0.6"
  }
 ```

## .env file

create a new file and rename that file to .env , put this file on
main directory

```
PATH_PRODUCT_ENDPOINT = /api/v1/product
PATH_SEARCH_ENDPOINT = /api/v1/search
PORT = 1010
mysql_host = localhost
mysql_user = root
mysql_password = 
mysql_database = blanjadb
```
## how to install

- clone this repo
- add .env file
- npm i / yarn install (for installing dependencies)

## documentation

you can find documentation on postman link collection bellow

https://documenter.getpostman.com/view/9503318/TVewYPfj

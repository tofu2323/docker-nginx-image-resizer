# nginx-image-resize

Simple docker container for dynamic image resizing with nginx image_filter module

## .env

example

```.env
PORT=80
IMAGE_HOST=https://storage.googleapis.com/your-project
NGINX_HOST=storage.googleapis.com
```

## Build and Run

```
$ docker build -t nginx-image-resize .
$ docker run -p 8080:80 --env-file .env nginx-image-resize 
```

## Usage

In case your .env is as above example.

If you want to get `https://storage.googleapis.com/your-project/your/file/name.jpg`  
just GET `http://localhost:8080/your/file/name.jpg`

If you want to resize.  
just GET `http://localhost:8080/your/file/name.jpg?w=500&h=500&q=100`

## Deploy to heroku

```
$ heroku config:set IMAGE_HOST=hoge
$ heroku config:set NGINX_HOST=fuga

$ heroku container:push web
$ heroku container:release web
$ heroku open
```
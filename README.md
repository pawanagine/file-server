# File server
Implementation of static file server, using node.js

## Install dependencies

```
npm install
```

## Run the app

```
npm run start
```

## Build Docker image

```
cd ~/file-server  # or whatever is the directory location of this repo
docker build -t file-server:latest .
docker image tag file-server:latest <docker_registery>/file-server:latest
docker push <docker_registery>/file-server:latest
```

## Deploy app

```
kubectl apply -f deployment.yaml
```
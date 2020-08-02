# MLFlow for Kubernetes

MLFlow docker image and manifest for deployment in Kubernetes with configuration for SQLite database.

# Installation

## Image

```
docker build -t registry/mlflow:latest ./image
docker push registry/mlflow:latest
```

## Required setting

- Edit `MLFLOW_TRACKING_URI` in `configmap.yaml` and `host` in `ingress.yaml`.
- Edit `MLFLOW_S3_ENDPOINT_URL` in `configmap.yaml`.
- Edit `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` in `configmap.yaml`.
- Edit `your-namespace` to actual name of your namespace in all files.

## S3 Bucket

Make S3 Bucket for MLFlow if it does not exists yet.

```
s3cmd mb s3:///mlflow
```

## PVC for SQLite database

```
kubectl -n your-namespace apply -f ./manifests/pvc
```

## MLFlow server

```
kubectl -n your-namespace apply -f ./manifests/server
```

# HELM for MLFlow

MLFlow docker image and helm chart for deployment in Kubernetes with configuration for SQLite database and S3 storage.

# Installation

## Create S3 Bucket

Make S3 Bucket for MLFlow if it does not exists yet.

```
s3cmd mb s3:///mlflow
```

## Install with helm

```
helm install \                                      
    --set pvc.size=100Gi \                       
    --set ingress.host=ingress.host \
    --set mlflow.s3_endpoint_url=s3.heu.cz \
    --set mlflow.aws_access_key_id=aws_access_key_id \
    --set mlflow.aws_secret_access_key=aws_secret_access_key \
    mlflow mlflow/
```

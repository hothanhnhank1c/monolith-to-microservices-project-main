# This file is used for convenience of local development.
# DO NOT STORE YOUR CREDENTIALS INTO GIT
export POSTGRES_USERNAME=postgres
export POSTGRES_PASSWORD=nhanht18
export POSTGRES_HOST=cdr-1.ct6hw0wplhhc.us-east-1.rds.amazonaws.com
export POSTGRES_DB=postgres
export AWS_BUCKET=arn:aws:s3:::nhanht18
export AWS_REGION=us-east-1
export AWS_PROFILE=default
export JWT_SECRET=testing
export URL=http://localhsot:5432
export DOCKER_USERNAME=hothanhnhank1c
export DOCKER_PASSWORD=hothanhnhank1c

kubectl apply -f env-secret.yaml
kubectl apply -f aws-secret.yaml
kubectl apply -f env-configmap.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-reverseproxy-deployment.yml
kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-service.yaml
kubectl apply -f backend-reverseproxy-service.yaml
kubectl apply -f udagram-frontend-service.yml
docker tag udagram-api-feed hothanhnhank1c/udagram-api-feed:v4
docker tag udagram-api-user hothanhnhank1c/udagram-api-user:v4
docker tag reverseproxy hothanhnhank1c/reverseproxy:v4
docker tag udagram-frontend hothanhnhank1c/udagram-frontend:v4

docker push hothanhnhank1c/udagram-api-feed:v4
docker push hothanhnhank1c/udagram-api-user:v4
docker push hothanhnhank1c/reverseproxy:v4
docker push hothanhnhank1c/udagram-frontend:v4

kubectl autoscale deployment backend-feed --cpu-percent=50 --min=1 --max=2
kubectl autoscale deployment backend-reverseproxy --cpu-percent=80 --min=1 --max=2
kubectl autoscale deployment backend-feed --cpu-percent=80 --min=2 --max=3
eksctl create cluster --name myClusterPj3 --region=us-east-2 --nodes-min=2 --nodes-max=3
aws eks update-kubeconfig --name myClusterPj3 --region us-east-2 
kubectl version
kubectl get nodes

eksctl utils describe-stacks --region=us-east-2 --cluster=myClusterPj3

# Kubernetes pods are deployed properly
kubectl get pods 
# Kubernetes services are set up properly
kubectl describe services
# You have horizontal scaling set against CPU usage
kubectl describe hpa
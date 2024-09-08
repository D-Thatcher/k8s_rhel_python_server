docker build -t ubi-py:v1 ./app
kind create cluster --config=kind.yaml
kind load docker-image ubi-py:v1
kubectl apply -f app.yaml
kubectl expose pod fine-pod --type=NodePort --port=8080
kubectl get services
docker ps -f name=kind-control-plane
echo "Run the following command to see the server respond:"
echo "> docker exec -it <control-plane container id> curl localhost:<fine-pod-service-port>"

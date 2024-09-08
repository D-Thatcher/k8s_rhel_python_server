kubectl delete -f app.yaml
kubectl delete service fine-pod --wait
kind delete cluster

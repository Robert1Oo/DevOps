
namespace="age-calc"
deployment="deployment.yaml"
service="service.yaml"
ingress="ingress.yaml"

# Clean up Kubernetes resources in the namespace
echo "Deleting resources in namespace ${namespace}..."
kubectl delete -f ${deployment} -n ${namespace}
kubectl delete -f ${service} -n ${namespace}
kubectl delete -f ${ingress} -n ${namespace}

# Optionally delete the namespace
echo "Deleting namespace ${namespace}..."
kubectl delete namespace ${namespace}

# Stop Minikube (but keep the cluster and data)
echo "Stopping Minikube..."
minikube stop

# Optionally delete Minikube (this removes all cluster data)
read -p "Do you want to delete the Minikube cluster? [y/N]: " confirm
if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
    echo "Deleting Minikube..."
    minikube delete
else
    echo "Minikube not deleted. You can restart it later."
fi

# Optional: Clean up Docker images to free up space
read -p "Do you want to remove Docker images? [y/N]: " confirm
if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
    echo "Cleaning up Docker images..."
    docker system prune -a
else
    echo "Docker images not removed."
fi

echo "Cleanup complete."


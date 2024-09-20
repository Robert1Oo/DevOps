set -e  # Exit script on any error

namespace="namespace.yaml"
deployment="deployment.yaml"
service="service.yaml"
ingress="ingress.yaml"

# Start Minikube
minikube start

# Create the namespace
kubectl apply -f ${namespace}

# Apply the deployment and service
kubectl apply -f ${deployment} -n age-calc

kubectl apply -f ${service} -n age-calc


# Wait for the deployment to be ready
kubectl wait --for=condition=available --timeout=60s deployment/age-calc -n age-calc

# Enable the Ingress addon
minikube addons enable ingress

# Wait for the Ingress controller to be ready
echo "Waiting for Ingress controller to be ready..."
until kubectl get deployment ingress-nginx-controller -n ingress-nginx -o jsonpath='{.status.readyReplicas}' | grep -q 1; do
    sleep 5
    echo "Still waiting for Ingress controller..."
done

# Now apply the ingress manifest
kubectl apply -f ${ingress} -n age-calc

# Get Minikube IP
minikube ip

minikube service age-calc-service -n age-calc --url

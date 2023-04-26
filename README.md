## Running on Kubernetes
- Build the docker image from the latest code: `docker build -t rinkiyakedad/simple-go-server --platform=linux/amd64 .`
- Push it: `docker push rinkiyakedad/simple-go-server`
- Apply the manifests: `k apply -f k8s.yaml`

## Accessing the application running on K8s
- List the services: `kubectl get services`
- Visit the "External IP" shown for the `simple-go-server` service

## ArgoCD


### Pre-requisites before running okteto up
- `kubectl create namespace argocd`
- `kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`
- `brew install argocd`
- `argocd login LoadBalancer IP/localhost:8080`

### Steps which deploy the application
- `argocd app create simple-go-server --repo https://github.com/rinkiyakedad/simple-go-server.git --path k8s --dest-server https://kubernetes.default.svc --dest-namespace default`
- `argocd app sync simple-go-server`

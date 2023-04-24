## Running on Kubernetes
- Build the docker image from the latest code: `docker build -t rinkiyakedad/simple-go-server --platform=linux/amd64 .`
- Push it: `docker push rinkiyakedad/simple-go-server`
- Apply the manifests: `k apply -f k8s.yaml`

## Accessing the application running on K8s
- List the services: `kubectl get services`
- Visit the "External IP" shown for the `simple-go-server` service

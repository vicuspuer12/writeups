# K3S installation

To install k3s I chose to use shell scripting, because I don’t need a lot of options to install (only exclude Traefik installation).
As mentioned earlier, I have a 3 node clusters with one control plane and 2 workers. During the following steps, the node token needs to be retrieved from the control plane node, in order to join the worker nodes.

The used scripts are shown below.

# Install k3s server

SSH into the control plane server and execute the script beneath.


_curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --disable traefik --disable servicelb" sh -_

# Retrieve token

Retrieve the node token from the control plane, which is needed further in the process to join the worker nodes.


_cat /var/lib/rancher/k3s/server/node-token_
 

# Retrieve certificate

Retrieve the certificate in order to communicate with the cluster.

Save this on your local machine in _~/.kube/<your config file>_.


_cat /etc/rancher/k3s/k3s.yaml_

# Add worker node

SSH into your worker node(s) and apply the script below. This will add the node as worker node to the cluster.


_curl -sfL https://get.k3s.io | K3S_URL=https://<Contol Plane IP>:6443 K3S_TOKEN=<YourToken> sh -_
 

# Load certificate

Once the steps before are applied, you can execute the following script to load the Kubernetes config.


_export KUBECONFIG=/etc/rancher/k3s/k3s.yaml_

# Rancher installation

The rancher installation was straight forward. I’ve used Helm templates to install Rancher.

# Install helm

_curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3_

_chmod 700 get_helm.sh_

_./get_helm.sh_

OR

_snap install helm_ (if the OS is Debian Based)

# Add Rancher Helm Repository

_helm repo add rancher-latest https://releases.rancher.com/server-charts/latest_

_kubectl create namespace cattle-system_

# Install Cert-Manager 

_kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.13.2/cert-manager.crds.yaml_

_helm repo add jetstack https://charts.jetstack.io_

# helm repo update

_helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.13.2_

_kubectl get pods --namespace cert-manager_

# Install Rancher

_helm install rancher rancher-latest/rancher --namespace cattle-system --set hostname=rancher.my.org --set bootstrapPassword=admin_

_kubectl -n cattle-system rollout status deploy/rancher_

_kubectl -n cattle-system get deploy rancher_

# Expose Rancher via Loadbalancer

_kubectl get svc -n cattle-system_

_kubectl expose deployment rancher --name=rancher-lb --port=443 --type=LoadBalancer -n cattle-system_

_kubectl get svc -n cattle-system_

# Go to Rancher GUI

Hit the url… and create your account Be patient as it downloads and configures a number of pods in the background to support the UI (can be 5-10mins) NB: Check the other port that the service is listening on which might not be 443, if 443 is not loading the GUI.

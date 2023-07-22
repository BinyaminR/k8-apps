## Setting Up Kubernetes Environment

This README provides step-by-step instructions for installing Kubernetes (`kubectl`) and Minikube, which is a tool that helps you run a Kubernetes cluster locally for development and testing purposes.

### Step 1: Install kubectl

Follow the steps below to install `kubectl` on Linux:

1. Download the `kubectl` binary using `curl`:
   ```bash
   curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
   ```

2. Provide execute permissions to the `kubectl` binary:
   ```bash
   chmod +x kubectl
   ```

3. Create the necessary directory for the `kubectl` executable:
   ```bash
   mkdir -p ~/.local/bin
   ```

4. Move the `kubectl` binary to the `~/.local/bin` directory:
   ```bash
   mv kubectl ~/.local/bin/
   ```

5. Check the installed `kubectl` version:
   ```bash
   kubectl version --client
   ```

### Step 2: Install Minikube

Proceed with the Minikube installation using the following steps:

6. Download the Minikube package for the latest release:
   ```bash
   curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
   ```

7. Install Minikube using `dpkg`:
   ```bash
   sudo dpkg -i minikube_latest_amd64.deb
   ```

8. Start a Kubernetes cluster with Minikube (optional-script will do later):
   ```bash
   minikube start
   ```

At this point, you should have both `kubectl` and Minikube set up on your system. You can now use `kubectl` to interact with your Minikube cluster, deploy applications, and manage resources.

For more information on using Kubernetes and Minikube, refer to the official documentation:

- [Kubernetes documentation](https://kubernetes.io/docs/home/)
- [Minikube documentation](https://minikube.sigs.k8s.io/docs/start/)

Enjoy developing and testing your Kubernetes applications locally with Minikube!
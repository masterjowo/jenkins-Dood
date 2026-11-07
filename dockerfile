FROM jenkins/jenkins:lts
USER root

# Instal Docker CLI agar Jenkins bisa menjalankan perintah docker
RUN apt-get update && apt-get install -y docker.io

# Instal Kubectl agar Jenkins bisa deploy ke K3s
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

USER jenkins
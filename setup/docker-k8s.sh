#!/bin/bash
set -e

echo "Settin up the Docker daemon, need access to /etc/docker/daemon.json"
cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

echo "Making /etc/systemd/system/docker.service.d dir"
mkdir -p /etc/systemd/system/docker.service.d

echo "Restarting Docker"
systemctl daemon-reload
systemctl restart docker
echo "Done"

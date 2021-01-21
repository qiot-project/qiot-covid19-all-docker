## qiot-datahub-docker

A set od docker-compose files to run the QIoT environment on your host machine using a OCI-compliant container engine and tools.
Podman engine is recommendedthus you'll find below the prerequisited and mandatory actions to take before using these compose files:

# if you want to go with podman:

`$ sudo dnf install -y podman podman-compose`

# Set up a dedicated container network for both your edge pods and datahub pods


`$ sudo docker network create edge` - Network dedicated to the services running on the edge device
/etc/cni/net.d/qiot-covid19-edge.conflist

`$ sudo podman network create datahub` - Network dedicated to the services running on the datacenter
/etc/cni/net.d/qiot-covid19-datahub.conflist

`$ sudo docker network create qiotconnect` - Network dedicated to the interaction between the edge device and the datahub
/etc/cni/net.d/qiot-covid19-edge.conflist

# Tools to monitor your container engine:

Docker: Portainer

`docker run -d --privileged -p 9000:9000 -p 8000:8000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce`

Podman: Podman Cockpit extension

`sudo dnf install cockpit-podman -y`

# Disable SELinux to allow containers to access persistent-volume mappings

We can edit the `/etc/selinux/config` text file with our persistent setting, either enforcing, permissive, or disabled. By default this file appears as shown below.

```
This file controls the state of SELinux on the system.
SELINUX= can take one of these three values:
    enforcing - SELinux security policy is enforced.
    permissive - SELinux prints warnings instead of enforcing.
    disabled - No SELinux policy is loaded.
LINUX=enforcing
ELINUXTYPE= can take one of three two values:
    targeted - Targeted processes are protected,
   minimum - Modification of targeted policy. Only selected processes are protected.
     mls - Multi Level Security protection.
SELINUXTYPE=targeted
```

We can simply edit the SELINUX variable between enforcing, permissive, or disabled, as outlined in the comments of the file. After editing the file the changes will not be in place immediately and will only change after system reboot.
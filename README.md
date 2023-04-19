# IPSillyTools

Simple utilities (mainly bash) to work with IPs

This was created within the EYEFUL project, and the first tool was one to allow a remote machine to remotely write a file in a given server (with known IP), that includes the remote IP. 

# Available scripts

`go.write-ip-to-remote.sh`: That reads the IP of the active network connection of the machine in which it is run, and writes it to a file in a remote server using ssh. It requires the username, IP and destination path in the remote server, and also that the ssh connection do not require a password (i.e. the public key is included in the `.ssh/authorized_keys` file). This is a silly non-generic bad approach that want to remotely look like DynDNS (ha!). In the production site we included the IP of the remote server in the `/etc/hosts` file, and the local ssh public keys were included as known in the remote server ssh configuration.

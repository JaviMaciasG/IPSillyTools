# IPSillyTools

Simple utilities (mainly bash) to work with IPs

This was creates within the EYEFUL project, and the first tool was one to allow a remote machine to remotely write a file in a given server (with known IP), that includes the remote IP. This is a silly non-generic bad approach that want to remotely look like DynDNS (ha!)

# Available scripts

`go.write-ip-to-remote.sh`: That reads the IP of the active network connection, and writes it to a file in a remote server using ssh. It requires the IP of the remote server, the username, the destination path in the remote server, and also that the ssh connection do not require a password (it's in the authorized_keys file) if you don't want it to prompt for one

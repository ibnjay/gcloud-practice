# This does seem to create firewall rules.
gcloud compute --project=network-lab-jay networks create my-auto-vpc --subnet-mode=auto
gcloud compute --project=network-lab-jay networks delete my-auto-vpc

# delete doesn't work if firewall rules exists.
gcloud compute networks list
gcloud compute networks delete default

#first delete the firewall then can delete the vpc.
gcloud compute firewall-rules delete default-allow-icmp default-allow-internal default-allow-rdp default-allow-ssh
gcloud compute --project=network-lab-jay networks delete default -q

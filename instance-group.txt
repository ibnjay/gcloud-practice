## Create unmanaged group + add instnaces.
gcloud compute instance-groups unmanaged create my-unmanaged-group --zone us-east1-b
gcloud compute instance-groups unmanaged list
gcloud compute instance-groups unmanaged add-instances my-unmanaged-group --instances=worker-instance-from-template-1,worker-instance-from-template-2 --zone us-east1-b
gcloud compute instance-groups unmanaged delete my-unmanaged-group --zone us-east1-b

## Create manged group.
gcloud beta compute instance-groups managed create my-managed-group --base-instance-name=my-managed-group --template=worker-template --size=1 --zones=us-east1-b,us-east1-c,us-east1-d --instance-redistribution-type=PROACTIVE
gcloud beta compute instance-groups managed set-autoscaling "my-managed-group" --region "us-east1" --cool-down-period "30" --max-num-replicas "5" --min-num-replicas "1" --target-cpu-utilization "0.7000000000000001"
gcloud compute instance-groups managed delete my-managed-group --region us-east1

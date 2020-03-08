gcloud iam service-accounts list
gcloud iam service-accounts describe frontend-sa@network-lab-jay.iam.gserviceaccount.com
gcloud iam service-accounts get-iam-policy frontend-sa@network-lab-jay.iam.gserviceaccount.com

gcloud iam service-accounts remove-iam-policy-binding frontend-sa@network-lab-jay.iam.gserviceaccount.com --member=user:ibnjay@gmail.com --role=roles/iam.serviceAccountUser

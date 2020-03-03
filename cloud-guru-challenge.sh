gcloud projects create clilab --enable-cloud-apis
gcloud config configurations list
gcloud alpha billing accounts list

#link billing acount to newly created project
gcloud alpha billing projects link clilab --billing-account 01DD18-7F1677-rest

# Enable Storage and compute API's
gcloud services enable storage-api.googleapis.com compute.googleapis.com

#create bucket
gsutil mb gs://jay-startup
# save startup script in file gcloudboot.sh
gsutil cp gcloudboot.sh gs://jay-startup

gcloud compute instances create example-instance \
            --zone us-central1-a --machine-type=f1-micro  \
            --metadata startup-script-url=gs://jay-startup/gcloudboot.sh,log_bucket_metadata_name=gs://jay-startup
     
gcloud compute instances create example-instance2 \
            --zone us-central1-a --machine-type=f1-micro --scopes storage-rw,default  \
            --metadata startup-script-url=gs://jay-startup/gcloudboot.sh,log_bucket_metadata_name=gs://jay-startup


# Delete instance
gcloud compute instances delete example-instance --zone us-central1-a

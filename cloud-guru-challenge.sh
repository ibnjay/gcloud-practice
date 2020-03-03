gcloud projects create clilab --enable-cloud-apis
gcloud config configurations list
gcloud alpha billing accounts list
gcloud alpha billing projects link clilab --billing-account 01DD18-7F1677-rest
gcloud services enable storage-api.googleapis.com compute.googleapis.com

gsutil mb gs://jay-startup
# save startup script in file gcloudboot.sh
gsutil cp gcloudboot.sh gs://jay-startup

gcloud compute instances create example-instance \
            --zone us-central1-a --machine-type=f1-micro --scopes=full \
            --metadata startup-script-url=gs://bucket/startupscript.sh

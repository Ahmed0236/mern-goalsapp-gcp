# ENABLE THE GCP ARTIFACT REGISTRY API and CLOUD RUN API
gcloud services enable artifactregistry.googleapis.com run.googleapis.com

# CREATE A REPO IN GCP ARTIFACT REGISTRY
gcloud artifacts repositories create gcp-docker-repo \
    --repository-format=docker \
    --location=us-central1 \
    --description="artifact repo to store docker image" \
    --async

# SUBMIT BUILD REQUEST
gcloud builds submit --config=cloudbuild.yaml
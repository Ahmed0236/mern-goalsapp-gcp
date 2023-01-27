#!/bin/bash

#delete the repo from artifact repository
gcloud artifacts repositories delete gcp-docker-repo --location=us-central1 --async || true

#delete the CLOUD RUN service endpoint
gcloud run services delete goal-gcp-app --region=us-central1 || true
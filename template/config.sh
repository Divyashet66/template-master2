#!/bin/bash
git_repo=https://github.com/Divyashet66/microservice-simple-php-website.git
builder=paketobuildpacks/builder:full
image_name=php
src_folder_name=microservice-simple-php-website/

deployment_metadata_name=php-app
replicas=1
selector_name=php-app
template_label_name=php-app
container_name=php-app
image=gcr.io/tech-rnd-project/php
container_port=8080

kubeContext=gke_tech-rnd-project_us-central1-a_composer
manifest1=k8/deployment.yaml
manifest2=k8/service.yaml
profile=staging
skaffold_metadata_name=staging-prod-deploy

service_metadata_name=php-app
service_port=8080
service_target_port=8080
type=LoadBalancer
selector_app=php-app


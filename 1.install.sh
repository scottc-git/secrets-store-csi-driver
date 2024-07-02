#!/bin/bash

helm repo add secrets-store-csi-driver https://kubernetes-sigs.github.io/secrets-store-csi-driver/charts

# https://secrets-store-csi-driver.sigs.k8s.io/getting-started/installation.html#optional-values
helm upgrade -i csi-secrets-store secrets-store-csi-driver/secrets-store-csi-driver --namespace kube-system --set syncSecret.enabled=true --set enableSecretRotation=true


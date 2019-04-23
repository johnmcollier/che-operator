#!/bin/bash
BASE_DIR=$(cd "$(dirname "$0")"; pwd)

kubectl delete -f ${BASE_DIR}/deploy/operator.yaml

kubectl delete -f ${BASE_DIR}/deploy/crds/org_v1_che_crd.yaml
kubectl delete -f ${BASE_DIR}/deploy/role_binding.yaml
kubectl delete -f ${BASE_DIR}/deploy/role.yaml
kubectl delete -f ${BASE_DIR}/deploy/service_account.yaml
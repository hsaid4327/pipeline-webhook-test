#!/bin/bash
oc new-project hsaid-cicd
oc new-app --template=jenkins-persistent
oc create -f pipeline-bc.yaml
oc create secret generic gits-secret  --from-literal=username=hsaid4327 --from-literal=password=NabIla4327
oc set build-secret --source bc/demo-pipeline gits-secret -n hsaid-jenkins

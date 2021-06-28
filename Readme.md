# An example for how to optimize test automation for hardware-centric, telemetry-driven applications 
Uses code from the following Repos:
- https://github.com/TU-Berlin-DIMA/resense.git
- https://github.com/garden-io/garden.git
- https://gitlab.com/gparent/f1-2020-telemetry.git
- https://github.com/mgunter-platform/formula1-telemetry-kafka



to setup on GKE:
1. point Garden to GKE
2. gcloud auth login [to GKE for DOCKER]
3. gcloud auth configure-docker
4. garden deploy -w -e gke

test data is available via s3 execute on each k8s node:
$/tmp/hostpath_pv/ sudo wget http://mgawsfiles.s3.amazonaws.com/f1-recordings/test1.sqlite3
$/tmp/hostpath_pv/ sudo wget http://mgawsfiles.s3.amazonaws.com/f1-recordings/MEG_Bahrain_3lapsGPX.sqlite

####copy from S3 to k8s
export AWS-REGION=us-east-1



skbn cp --src s3://mgawsfiles/f1-recordings/MEG_Bahrain_3lapsGPX.sqlite --dst k8s://suitcaselab-default/recorder-pod/f1-recorder/sensable/MEG_Bahrain_3lapsGPX.sqlite

skbn cp --src s3://mgawsfiles/f1-recordings/RJG_Melbourne_3lapsGPX.sqlite --dst k8s://suitcaselab-default/recorder-pod/f1-recorder/sensable/RJG_Melbourne_3lapsGPX.sqlite



skbn cp \
    --src k8s://suitcaselab-default/recorder-pod/f1-recorder/sensable/F1_asdf.sqlite3 --dst s3://mgawsfiles/f1-recordings/F1_asdf.sqlite3


k create -f player-pod.yaml

Note :
local docker kubernetes supports hostpath storageclass (as default)
gke kubernetes uses standard storageclass (as default)
current configuration is for local docker k8s.
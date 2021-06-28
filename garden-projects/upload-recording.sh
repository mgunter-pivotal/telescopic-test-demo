#bash

# End of Recording, save to AWS
echo "pointing to k config:"
k config current-context 
k logs recorder-pod -n suitcaselab-default --tail 10 # done?
k exec -it recorder-pod -n suitcaselab-default -- ls # filename?
echo "enter filename to copy from recorder pod to AWS" 
read filename
OUTPUT1=$(skbn cp --src k8s://suitcaselab-default/recorder-pod/f1-recorder/sensable/$filename --dst s3://mgawsfiles/f1-recordings/$filename )
echo $OUTPUT1
# switch context to GKE
k config use-context gke_th-structure-flow-demo_us-central1-c_cluster-2

# add recorder pod.
OUTPUT1=$(skbn cp --src s3://mgawsfiles/f1-recordings/$filename --dst k8s://suitcaselab-default/recorder-pod/f1-recorder/sensable/demo.sqlite3 )
echo $OUTPUT1
k apply -f demo.yaml

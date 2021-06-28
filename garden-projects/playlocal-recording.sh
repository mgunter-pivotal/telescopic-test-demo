#bash

# End of Recording, save to AWS
echo "pointing to k config:"
k config current-context 
k logs recorder-pod -n suitcaselab-default --tail 10 # done?
OUTPUT1=$(skbn cp --src s3://mgawsfiles/f1-recordings/RJG_Melbourne_3lapsGPX.sqlite --dst k8s://suitcaselab-default/recorder-pod/f1-recorder/sensable/demo.sqlite3 )
echo $OUTPUT1
k apply -f demo.yaml

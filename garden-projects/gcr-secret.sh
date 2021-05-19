kubectl create secret docker-registry gcr-json-key \
--docker-server=gcr.io \
--docker-username=_json_key \
--docker-password="$(cat ~/Downloads/th-structure-flow-demo-7aa8399569cb.json)" \
--docker-email=mgunter@gmail.com

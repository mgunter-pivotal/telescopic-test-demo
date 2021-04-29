kubectl create secret docker-registry gcr-json-key \
--docker-server=gcr.io \
--docker-username=_json_key \
--docker-password="$({
  "type": "service_account",
  "project_id": "th-structure-flow-demo",
  "client_email": "1084572173225-compute@developer.gserviceaccount.com",
  "client_id": "100387121239928010552",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/1084572173225-compute%40developer.gserviceaccount.com"
})" \
--docker-email=mgunter@gmail.com

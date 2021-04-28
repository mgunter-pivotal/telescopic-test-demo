kubectl create secret docker-registry gcr-json-key \
--docker-server=gcr.io \
--docker-username=_json_key \
--docker-password="$({
  "type": "service_account",
  "project_id": "th-structure-flow-demo",
  "private_key_id": "07c813c4a905bd9e5388eaea14ce91f33590af8b",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCV00TvQdKV+8TM\nw5BbbXlEtm4T/6wk1wg78Qg84lJUHGDw0d6RbGOnq9e2CBvnPl7ucjRcQkDtOn9B\n6wI+a2TIw7p8JTUMgQmrJlkiOgYKL6XvSMGH8N8boJ04gb/dv8dAMqugq/sFU/Wi\nLKjtc8wEontHDX24UWp/eX5ZE3MAdr/bBPIsFkDX5rSUKu1XAJNuzCqW2Zn6Pi3u\n2oRUWWRZPtsPFDc4efsTKAdROezaYDV02TGjqFtN7G0bMMwqOjtf7vw8nN5ydpWn\ne46sjUhGtjVyPhxuG1HeqeBvtSVUN2ofAo6lDCjgixtg2kVl6kAmJcKlAiX5GL87\nS4LqaQEjAgMBAAECggEAOLCjdTo9MbX9bZMTxJxkFc1HUnbbzma0vWWCvfLOvver\n8IMgiXrvLCrX6I8h67oMVoHM8Rm6kmifbTQ8eZzOGi8BGWdErtIGdAWDFXHKBkGo\nMiWf4M2RxdTcmFxz2jZt8IsbqKRaS1ZM64ulcY9uo1RNfAGNT9gyiUBRv+edjI9N\n4gQLC+8q1xz+uobfm7+lTyov8O2UQIzbcfeXwQpEqQRcyppBrRVcD1MiyBjq06l1\nvqZJQlDLUaXhTP5KD7q8lGWU1IJeQtWPWA/W1jdUF74/4jE/oLF3lsqJckfvH8in\n8fF13KRdPr2L2csGOeNcxKuHNKGBxcz2lKwzBbIbpQKBgQDIi0/fyjEHwoq12EM4\nxbw4iIfgUvdYN5mcNEywCb66qmHqYdABEgbA0ROljK3O8KeHx5P60Ph7oTEjxKP0\nHWYub1yBFf9Yohj5NSfIUy1FsVxMzOwnXUrEBPjmxBLoJSMaPY6fz2M4kCnrwslQ\nITMLYI9PturXoTICc1aBjF1+pwKBgQC/QYX+1blmyyUAtKGMvils4UkgKLoxt1ET\ntxsEmsb0SfcDsXuwEuWUskEKcWi+ZeQVxiEbtPrwyBT72ay6Vqo58whf3VS/q6rD\nSwnvp0KIcFEcmuxC2tI2mk7iB/7JPLAqVnos82ZiLWJ8YA8HAVu3cqj/Ii06rxuQ\niv+TIK4VJQKBgFGti8aVzwpeDaiqgBZrUpGj6dNPdzYSzxlzo5g/H9Ne+apAVDtb\nYCy/+sR+W3vhQBppCrgozEtuB1mOCUivgKKA8KgSkYFD4+/72kwYtGOiLPmKrNQL\nhxv2+njieuDZ30YctC4ahUrQTIKdPujH3MZReYz57wQLvxaIaz8wMBQZAoGAZ4g7\n1iCyNaAgjso5bav/Vs55vGvvpzwaKrcDbDGxI8rqadhpIX6JQz5fkRylW/RiTRst\nDweglDlrio5iP5jsm2Qhk2uIFh4C2adEYLRFgwByGC8RWHuGMkLEEv3LAfrVToXz\nq2Ozd9AjsTp6yAsHMD5kl4BTxaHHJS7pfSbCtfUCgYBC+EZfs/pKjIQE1YdCvvRO\nLnmmf1G8+vJLVMx5qt9Lh4GtABxx/HqRtWId37wJolMJVzb3jNOLChxW3kb15s+x\nXaPHr75YCc9p2q5MIlN4LtNEBQLyPtlJfzLwyUZk5UYUAmnstzlQiFZrgXAos+dN\nnx29GJBnQ6TbMQstnMY8nQ==\n-----END PRIVATE KEY-----\n",
  "client_email": "1084572173225-compute@developer.gserviceaccount.com",
  "client_id": "100387121239928010552",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/1084572173225-compute%40developer.gserviceaccount.com"
})" \
--docker-email=mgunter@gmail.com

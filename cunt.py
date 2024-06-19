import base64
import boto3

kmsclient = boto3.client('kms', region_name='ca-central-1')
decrypted_value = kmsclient.decrypt(CiphertextBlob=base64.b64decode('AQIDAHgpwe0zac8YY4VwyIHLXLAwjpKMpFS3YliIll5+YpMewgGDG6tlcpDiMU7TUBay2TQhAAAAfjB8BgkqhkiG9w0BBwagbzBtAgEAMGgGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMJ/LdlA9v51qBgRVrAgEQgDtBO9z5AMWTmeqnND6qP58d0HXioPPUVrZqWIBPOpKYWaOfDTlykpx7O2GSiWxS5qY6g2SX2MeyJXGgXA=='))['Plaintext'].decode('utf-8'))

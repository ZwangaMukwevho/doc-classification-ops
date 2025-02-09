# DOC-CLASSIFICATION OPS

This is the tool is Terraform configuration that will allow you automatically provision infrastructure to host the doc-classification.co.za website.

## Setting up
1. Create a `.tvars` file and the path to the public and private key you will be using while provisioning the ec2 instance.
2. An example of this is: 
```
PUBLIC_KEY_PATH = "/Users/foouser/.ssh/sshkey.pub"
PRIVATE_KEY_PATH = "/Users/foouser/.ssh/sshkey"
``` 
# Sending VPC and Subnet infos to DynamoDB using Lambda

## Paste your AWS Access Key and Secret Key in terraform.tfvars file 

Choose your region. 
Make changes in terraform.tfvars accordingly (region, optionally profile)

## Send vpc id , cidr block , subnet id and subnet block to dynamodb
```
Build node js app and copy lambda.zip to terraform folder.Paste AWS access key and secret key in config.json. 
```

## Terraform apply
```
terraform init
terraform apply
```

## Destroy

```
terraform destroy
```

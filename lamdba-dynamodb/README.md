# Setting up AWS EKS

## Paste your AWS Access Key and Secret Key in terraform.tfvars file 

Choose your region. 
Make changes in terraform.tfvars accordingly (region, optionally profile)

## Download kubectl
```
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin
```

## Download the aws-iam-authenticator
```
wget https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.0/aws-iam-authenticator_0.5.0_linux_amd64
chmod +x aws-iam-authenticator_0.5.0_linux_amd64
sudo mv aws-iam-authenticator_0.5.0_linux_amd64 /usr/local/bin/aws-iam-authenticator_0.5.0_linux_amd64
```

## Terraform apply
```
terraform init
terraform apply
```

## Configure kubectl
```
terraform output kubeconfig > ~/.kube/config
aws eks --region eu-west-1 update-kubeconfig --name terraform-eks-demo
```

## Configure config-map-auth-aws
```
terraform output config-map-aws-auth > config-map-aws-auth.yaml  # save output in config-map-aws-auth.yaml
kubectl apply -f config-map-aws-auth.yaml
```

## See nodes coming up
```
kubectl get nodes --watch
```

## Destroy
Make sure all the resources created by Kubernetes are removed (LoadBalancers, Security groups), and issue:
```
terraform destroy
```

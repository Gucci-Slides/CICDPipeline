# Terraform AWS EC2 Instance

This code uses Terraform to create an EC2 instance on AWS. It is assumed that the user has an AWS account and has installed the necessary Terraform dependencies. The code is designed to be run through a Jenkins pipeline, as specified in the Jenkinsfile included in the repository.

## **Jenkins Pipeline**

The Jenkins pipeline is defined in the **Jenkinsfile** and consists of the following stages:

1. **Checkout**: The code is checked out from the repository.
2. **Plan**: Terraform is initialized and a plan is generated. The plan is saved to a file and displayed in the Jenkins console.
3. **Approval**: If the **autoApprove** parameter is not set to **true**, the pipeline will pause at this stage and wait for manual approval to proceed.
4. **Apply**: The Terraform plan is applied.

## **Installation**

1. Clone the repository to your local machine.
2. In the root directory of the project, create a file named **terraform.tfvars** and set the following variable:

```
region = [Your desired AWS region]
```

## **Usage**

1. Review the variables in **variables.tf** and make any necessary changes. The default region is **us-east-1**, but you can specify a different region by setting the **region** variable.

```
variable "region" {
  description = "region"
  type        = string
  default     = "us-east-1"
}
```

2. Run the Jenkins pipeline to deploy the EC2 instance. You can set the **autoApprove** parameter to **true** to automatically apply the plan, or leave it set to **false** to manually approve the plan before applying.
3. When you're finished with the EC2 instance, destroy it by running **terraform destroy**

## **License**

This project is licensed under the **MIT License**.

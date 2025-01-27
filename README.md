# Terraform Count vs For_Each Example

This repository demonstrates the use of Terraform's count and for_each meta-arguments through practical examples of provisioning AWS Security Groups. The project showcases modular and reusable Terraform code designed to reflect real-world scenarios.

## Code Structure

```bash
tree terraform/
.
├── main.tf
├── terraform.tfvars
├── modules/
│   ├── sg_count/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── sg_count_condition/
│   │   ├── main.tf
│   │   ├── variables.tf
│   ├── sg_for_each/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
```

## Root Module

* main.tf: Invokes the child modules for Security Group provisioning using count and for_each. Acts as the entry point for the Terraform configuration.

* terraform.tfvars: Contains variable values for deploying the infrastructure. It keeps configurations dynamic and separate from the main code logic.

## Child Modules

1. sg_count:

* Demonstrates creating AWS Security Groups using the count meta-argument.

* Suitable for provisioning identical resources or conditionally creating resources based on numeric input.

2. sg_count_condition:

* Demonstrates conditional creation of AWS Security Groups using the count meta-argument.

* Useful for dynamically enabling or disabling Security Group provisioning based on specific conditions.

3. sg_for_each:

* Demonstrates creating AWS Security Groups using the for_each meta-argument.

* Useful for creating resources with unique configurations, such as different ports or rules for each Security Group.

## How to Use

1. Clone this repository:

```bash 
git clone https://github.com/your-repo/terraform-count-vs-foreach.git
```

2. Navigate to the terraform/ directory:

```bash
cd terraform
```

3. Modify the terraform.tfvars file to suit your requirements.

4. Initialize Terraform:

```bash
terraform init
```

5. Preview the planned infrastructure changes:

```bash
terraform plan
```

6. Apply the changes:

```bash
terraform apply
```

7. To destroy the infrastructure:

```bash
terraform destroy
```

# Author

This project is created and maintained by Charanjit Singh.

* Email: charanjit.singh@outlook.in/charanjit.cheema@cjcheema.com
* Website: https://www.cjcheema.com
* LinkedIn: https://www.linkedin.com/in/cjcheema/

Feel free to connect for any questions, suggestions, or feedback.
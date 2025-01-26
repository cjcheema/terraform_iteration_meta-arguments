# Terraform Count vs For_Each Example

This repository demonstrates the use of Terraform's count and for_each meta-arguments through practical examples of provisioning AWS Security Groups. The project showcases modular and reusable Terraform code designed to reflect real-world scenarios.

## Code Structure

<code>
tree terraform/
.
├── main.tf
├── terraform.tfvars
├── modules/
│   ├── security_group_count/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── security_group_for_each/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
</code>

## Root Module

* main.tf: Invokes the child modules for Security Group provisioning using count and for_each. Acts as the entry point for the Terraform configuration.

* terraform.tfvars: Contains variable values for deploying the infrastructure. It keeps configurations dynamic and separate from the main code logic.

## Child Modules

* security_group_count:

Demonstrates creating AWS Security Groups using the count meta-argument.

Suitable for provisioning identical resources or conditionally creating resources based on numeric input.

* security_group_for_each:

Demonstrates creating AWS Security Groups using the for_each meta-argument.

Useful for creating resources with unique configurations, such as different ports or rules for each Security Group.

## How to Use

1. Clone this repository:

<code>git clone https://github.com/your-repo/terraform-count-vs-foreach.git</code>

2. Navigate to the terraform/ directory:

<code>cd terraform</code>

3. Modify the terraform.tfvars file to suit your requirements.

4. Initialize Terraform:

<code>terraform init</code>

5. Preview the planned infrastructure changes:

<code>terraform plan</code>

6. Apply the changes:

<code>terraform apply</code>

7. To destroy the infrastructure:

<code>terraform destroy</code>

# Author

This project is created and maintained by Charanjit Singh.

* Email: charanjit.singh@outlook.in/charanjit.cheema@cjcheema.com
* Website: https://www.cjcheema.com
* LinkedIn: https://www.linkedin.com/in/cjcheema/

Feel free to connect for any questions, suggestions, or feedback.
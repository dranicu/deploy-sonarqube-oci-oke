# Deploying SonarQube on OCI OKE

This guide provides steps to deploy SonarQube on Oracle Kubernetes Engine (OKE) using Terraform.

## Prerequisites

- **OCI Account**: Ensure you have an active Oracle Cloud Infrastructure account.
- **OCI CLI**: Install and configure the OCI Command Line Interface.
- **Terraform**: Install Terraform on your local machine.
- **SSH Keys**: Generate a key pair for SSH access to the OKE nodes.

## Deployment Options

You can deploy SonarQube using either the **OCI Resource Manager** (One-Click Deployment) or the **Terraform CLI**.

---

## Option 1: Deploy Using OCI Resource Manager

### One-Click Deployment

Click the button below to automatically deploy SonarQube on OCI using **Resource Manager**:

   [![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://objectstorage.eu-frankfurt-1.oraclecloud.com/p/ecN0atwu3XGHxvL-wWdyxfFry0On3fidzc7hO8ZvZf4qnELPAZ_OQdjsdNubJ6uP/n/ocisateam/b/code-zips/o/deploy-sonarqube-oci-oke-main.zip)


### Manual Deployment via OCI Console

1. **Sign in to OCI Console** and go to **Resource Manager** > **Stacks**.
2. Click **Create Stack**.
3. Choose **"From a URL"**, and enter:
   ```bash
   https://github.com/dranicu/deploy-sonarqube-oci-oke/archive/refs/heads/main.zip
   ```


4. Click **Next**, configure required variables, and create the stack.
5. Click **Terraform Actions** > **Apply** to deploy the stack.

---

## Option 2: Deploy Using Terraform CLI

### 1. Clone the Repository
```bash
git clone https://github.com/dranicu/deploy-sonarqube-oci-oke.git
cd deploy-sonarqube-oci-oke
```

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Plan the Deployment
```bash
terraform plan
```

### 4. Apply the Deployment
```bash
terraform apply
```
- Confirm the apply action when prompted.

---

## Post-Deployment

### Access SonarQube
- Retrieve the Load Balancer's public IP from the **Terraform output** or **OCI Console**.
- Open the link in your browser.

### Default SonarQube Credentials
- **Username**: `admin`
- **Password**: `admin`

For more details, refer to the [SonarQube documentation](https://www.sonarqube.org/).

---

**Note**: Ensure that all necessary OCI resources and policies are properly configured before deployment.


<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform google kms
</h1>

<p align="center" style="font-size: 1.2rem;">
    Terraform module to create kms resource on google.
     </p>

<p align="center">

<a href="https://www.terraform.io">
  <img src="https://img.shields.io/badge/Terraform-v1.9.5-green" alt="Terraform">
</a>
<a href="https://github.com/slovink/terraform-google-kms/blob/main/LICENSE">
  <img src="https://img.shields.io/badge/License-APACHE-blue.svg" alt="Licence">
</a>

</p>
<p align="center">

<a href='https://www.facebook.com/Slovink.in=https://github.com/slovink/terraform-lables'>
  <img title="Share on Facebook" src="https://user-images.githubusercontent.com/50652676/62817743-4f64cb80-bb59-11e9-90c7-b057252ded50.png" />
</a>
<a href='https://www.linkedin.com/company/101534993/admin/feed/posts/=https://github.com/slovink/terraform-lables'>
  <img title="Share on LinkedIn" src="https://user-images.githubusercontent.com/50652676/62817742-4e339e80-bb59-11e9-87b9-a1f68cae1049.png" />
</a>

# Terraform-google-kms
# Terraform Google Cloud Kms Module
## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Examples](#examples)
- [License](#license)
- [Author](#author)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Introduction
This project deploys a Google Cloud infrastructure using Terraform to create Kms .
## Usage
To use this module, you should have Terraform installed and configured for GCP. This module provides the necessary Terraform configuration for creating GCP resources, and you can customize the inputs as needed. Below is an example of how to use this module:
## Example: kms
```hcl
module "kms_key" {
  source           = "git::https://github.com/slovink/terraform-google-kms.git?ref=v1.0.0"
  name             = "ops"
  environment      = "test"
  location         = "asia-northeast1"
  service_accounts = ["serviceAccount:xxxxxxxxxx-compute@developer.gserviceaccount.com"]
  role             = "roles/editor"
}
```
This example demonstrates how to create various GCP resources using the provided modules. Adjust the input values to suit your specific requirements.

## Examples
For detailed examples on how to use this module, please refer to the [Examples](https://github.com/slovink/terraform-google-kms/tree/master/example) directory within this repository.

## Author
Your Name Replace **MIT** and **slovink** with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the **MIT** License - see the [LICENSE](https://github.com/slovink/terraform-google-kms/blob/master/LICENSE) file for details.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.5 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 3.50.0, < 5.11.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 3.50.0, < 5.11.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::https://github.com/slovink/terraform-google-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [google_kms_crypto_key.key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_crypto_key) | resource |
| [google_kms_crypto_key_iam_binding.kms_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_crypto_key_iam_binding) | resource |
| [google_kms_crypto_key_iam_member.key_encryption_role](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_crypto_key_iam_member) | resource |
| [google_kms_key_ring.key_ring](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_key_ring) | resource |
| [google_kms_key_ring_iam_member.kms_key_access](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_key_ring_iam_member) | resource |
| [google_client_config.current](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_config) | data source |
| [google_storage_project_service_account.gcs_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/storage_project_service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | A boolean flag to enable/disable service-account . | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Additional tags for the resource. | `map(string)` | `{}` | no |
| <a name="input_import_only"></a> [import\_only](#input\_import\_only) | Whether these keys may contain imported versions only. | `bool` | `false` | no |
| <a name="input_key_algorithm"></a> [key\_algorithm](#input\_key\_algorithm) | The algorithm to use when creating a version based on this template. See the https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm for possible inputs. | `string` | `"GOOGLE_SYMMETRIC_ENCRYPTION"` | no |
| <a name="input_key_destroy_scheduled_duration"></a> [key\_destroy\_scheduled\_duration](#input\_key\_destroy\_scheduled\_duration) | Set the period of time that versions of keys spend in the DESTROY\_SCHEDULED state before transitioning to DESTROYED. | `string` | `null` | no |
| <a name="input_key_protection_level"></a> [key\_protection\_level](#input\_key\_protection\_level) | The protection level to use when creating a version based on this template. Default value: "SOFTWARE" Possible values: ["SOFTWARE", "HSM"] | `string` | `"SOFTWARE"` | no |
| <a name="input_key_rotation_period"></a> [key\_rotation\_period](#input\_key\_rotation\_period) | Generate a new key every time this period passes. | `string` | `"100000s"` | no |
| <a name="input_keys"></a> [keys](#input\_keys) | List of keys | `list(string)` | n/a | yes |
| <a name="input_kms_binding"></a> [kms\_binding](#input\_kms\_binding) | List of comma-separated owners for each key declared in set\_kms\_binding\_for. | `list(string)` | `[]` | no |
| <a name="input_kms_key_ring_enabled"></a> [kms\_key\_ring\_enabled](#input\_kms\_key\_ring\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] . | `list(string)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels, provided as a map | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | Location for the keyring. | `string` | `""` | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'slovink.com' | `string` | `"slovink"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the resource. Provided by the client when the resource is created. | `string` | `""` | no |
| <a name="input_prevent_destroy"></a> [prevent\_destroy](#input\_prevent\_destroy) | Set the prevent\_destroy lifecycle attribute on keys. | `bool` | `true` | no |
| <a name="input_purpose"></a> [purpose](#input\_purpose) | The immutable purpose of the CryptoKey. Possible values are ENCRYPT\_DECRYPT, ASYMMETRIC\_SIGN, and ASYMMETRIC\_DECRYPT. | `string` | `"ENCRYPT_DECRYPT"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `"https://github.com/slovink/terraform-google-kms"` | no |
| <a name="input_role"></a> [role](#input\_role) | List of roles to assign to the service account for KMS encryption/decryption | `list(string)` | <pre>[<br>  "roles/cloudkms.cryptoKeyEncrypterDecrypter",<br>  "roles/cloudkms.cryptoKeyViewer"<br>]</pre> | no |
| <a name="input_set_kms_binding_for"></a> [set\_kms\_binding\_for](#input\_set\_kms\_binding\_for) | Name of keys for which kms\_binding will be set. | `list(string)` | `[]` | no |
| <a name="input_skip_initial_version_creation"></a> [skip\_initial\_version\_creation](#input\_skip\_initial\_version\_creation) | If set to true, the request will create CryptoKeys without any CryptoKeyVersions. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_etag"></a> [etag](#output\_etag) | The etag of the project's IAM policy. |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | An identifier for the resource with format |
| <a name="output_keyring_ids"></a> [keyring\_ids](#output\_keyring\_ids) | List of key ring IDs created in Google Cloud KMS. |
| <a name="output_keyring_names"></a> [keyring\_names](#output\_keyring\_names) | List of key ring names created in Google Cloud KMS. |
| <a name="output_keys"></a> [keys](#output\_keys) | Map of key name => key self link. |
<!-- END_TF_DOCS -->
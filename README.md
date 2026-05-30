## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.47.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.s3_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.sse_s3_config](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | n/a | `set(string)` | n/a | yes |
| <a name="input_enviornement"></a> [enviornement](#input\_enviornement) | n/a | `string` | `"dev"` | no |
| <a name="input_org-name"></a> [org-name](#input\_org-name) | n/a | `string` | `"my-company"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_s3_bucket"></a> [aws\_s3\_bucket](#output\_aws\_s3\_bucket) | bucket name |
| <a name="output_aws_s3_bucket_print-key-value"></a> [aws\_s3\_bucket\_print-key-value](#output\_aws\_s3\_bucket\_print-key-value) | bucket name |
| <a name="output_aws_s3_with-map"></a> [aws\_s3\_with-map](#output\_aws\_s3\_with-map) | n/a |

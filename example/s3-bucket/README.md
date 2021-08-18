# Terraform AWS S3 Bucket Module

This Terraform Module creates an [S3 Bucket](https://docs.aws.amazon.com/AmazonS3/latest/gsg/GetStartedWithS3.html).

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the S3 bucket to create. | `string` | n/a | yes |
| <a name="input_bucket_acl"></a> [bucket\_acl](#input\_bucket\_acl) | The type of ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. | `string` | `"private"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of the environment that the bucket is deployed to. | `string` | `"dev"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | The name of the bucket. |

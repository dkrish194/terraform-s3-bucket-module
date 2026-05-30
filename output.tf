output "aws_s3_bucket" {

  description = "bucket name"
  #   value = aws_s3_bucket.bucket["krishna-1"].id
  value = [for bucket in aws_s3_bucket.bucket : bucket.id] // 
  # value = [for bucket, bucket_value in aws_s3_bucket.bucket: bucket = > bucket.id ] // 
}

# output "aws_s3_bucket_key" {

#   description = "bucket name"
#     value = [for bucket-value in aws_s3_bucket.bucket: bucket-value ]     // printing full content { ...}
#     //aws_s3_bucket.bucket   is list items,
#     // every loop you will get one item, by default it will take value  when we use one loop variable
#     // when we use 2 loop variable then key and value
# }
# output "aws_s3_bucket_key-value" {

#   description = "bucket name"
#     value = [for bucket-key , bucket-value in aws_s3_bucket.bucket: bucket-key ]     // printing full content { ...}
#     //aws_s3_bucket.bucket   is list items,
#     // every loop you will get one item, by default it will take value  when we use one loop variable
#     // when we use 2 loop variable then key and value
# }

output "aws_s3_bucket_print-key-value" {

  description = "bucket name"
  value       = { for bucket-key, bucket-value in aws_s3_bucket.bucket : bucket-key => bucket-value.id } // printing full content { ...}

}

output "aws_s3_with-map" {
  value = { for key, value in aws_s3_bucket.bucket : key => {
    id  = value.id
    arn = value.arn
    }

  }
}
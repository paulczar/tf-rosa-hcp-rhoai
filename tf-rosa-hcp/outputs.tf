
output "bucket_names" {
  value = [for bucket in aws_s3_bucket.multiple_buckets : bucket.bucket]
}

output "secondary_machine_pool_name" {
  value = rhcs_hcp_machine_pool.secondary_machine_pool.name
}

output "secondary_machine_pool_instance_type" {
  value = rhcs_hcp_machine_pool.secondary_machine_pool.aws_node_pool.instance_type
}

output "secondary_machine_pool_replicas" {
  value = rhcs_hcp_machine_pool.secondary_machine_pool.autoscaling.enabled ? "Autoscaling enabled" : "Autoscaling disabled"
}

output "rosa" {
  value = module.rosa
}
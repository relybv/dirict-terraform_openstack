output "customer" {
    value = "${var.customer}"
}

output "environment" {
    value = "${var.environment}"
}

output "load balancer members" {
    value = "${openstack_compute_instance_v2.appl1.network.0.fixed_ip_v4} ${openstack_compute_instance_v2.appl2.network.0.fixed_ip_v4}"
}

output "load balancer public address" {
    value = "${openstack_compute_floatingip_v2.float1.address}"
}

output "test https servers" {
    value = "https://${openstack_compute_floatingip_v2.float1.address}/working.html"
}

output "application server 1 address" {
    value = "${openstack_compute_floatingip_v2.float2.address}"
}

output "application server 2 address" {
    value = "${openstack_compute_floatingip_v2.float3.address}"
}

output "db server 1 address" {
    value = "${openstack_compute_floatingip_v2.float4.address}"
}

output "monitor server 1 address" {
    value = "${openstack_compute_floatingip_v2.float5.address}"
}

output "jump server login" {
    value = "ssh ubuntu@${openstack_compute_floatingip_v2.float5.address} -i ~/.ssh/id_rsa.terraform"
}

output "windows server 1 address" {
    value = "${openstack_compute_floatingip_v2.float6.address}"
}

output "get windows server 1 password" {
    value = "nova --insecure get-password win1 ~/.ssh/id_rsa.terraform"
}


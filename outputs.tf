output "myserver-public-ip" {
    value = module.myapp-ec2.instance.public_ip
}
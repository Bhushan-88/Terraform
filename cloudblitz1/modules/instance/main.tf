resource "aws_instance" "instance" {
    count = var.count
    ami = var.image_id
    instance_type = var.instance_type
    vpc_security_group_ids = var.sg_ids
    key_name = var.key_pair
    subnet_id = var.subnet_id
    
    tags = {
        Name = "${var.project}-instance"
        env = var.env
    }
}


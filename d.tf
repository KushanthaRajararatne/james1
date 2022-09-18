provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "longitude23" {
ami           = "ami-005e54dde23324e" # sg-south-2
instance_type = "t2.micro"

tags = {
  Name = "test"
}

user_data = <<EOF
#!/bin/bash
apt-get install -y awscli
export AWS_ACCESS_KEY_ID=access_key_id
export AWS_SECRET_ACCESS_KEY=secret_access_key
EOF

credit_specification {
  cpu_credits = "unlimited"
}
}


# Step (2), creates a key to use for server access and certs

aws ec2 create-key-pair --key-name pcf-admin-key --query 'KeyMaterial' --output text > pcf-admin-key.pem

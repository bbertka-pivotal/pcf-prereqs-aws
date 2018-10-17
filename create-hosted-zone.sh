
# Step (1) Creates a hosted zone, use this identifier in your Concourse params file

aws route53 create-hosted-zone --name west.aws.pcfninja.com --caller-reference Pivotal

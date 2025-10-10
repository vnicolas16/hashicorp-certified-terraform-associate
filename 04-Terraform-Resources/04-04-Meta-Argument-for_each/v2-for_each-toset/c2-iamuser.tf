# Create 4 IAM Users
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

resource "aws_iam_user" "myuser" {
  for_each = toset(["Nico", "Hugo", "Paco", "Luis"])
  name     = each.key
  #name    = each.value   ---> we could off used each.lavue and we´ll get the same result
}

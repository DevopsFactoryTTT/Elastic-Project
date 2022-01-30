resource "aws_eks_cluster" "ttt" {
  name     = var.cluster-name
  role_arn = aws_iam_role.ttt-cluster.arn

  vpc_config {
    security_group_ids = [aws_security_group.ttt-cluster.id]
    # TF-UPGRADE-TODO: In Terraform v0.10 and earlier, it was sometimes necessary to
    # force an interpolation expression to be interpreted as a list by wrapping it
    # in an extra set of list brackets. That form was supported for compatibilty in
    # v0.11, but is no longer supported in Terraform v0.12.
    #
    # If the expression in the following list itself returns a list, remove the
    # brackets to avoid interpretation as a list of lists. If the expression
    # returns a single list item then leave it as-is and remove this TODO comment.
    subnet_ids = module.vpc.public_subnets
  }

  depends_on = [
    aws_iam_role_policy_attachment.ttt-cluster-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.ttt-cluster-AmazonEKSServicePolicy,
  ]
}


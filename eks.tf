terraform {
    backend "s3" {
        bucket = "terraform-state-lab10"
        key = "workspace/eks/eks"
        region = "us-east-1"
    }
}


resource "aws_eks_cluster" "cluster1" {
  name     = "jameseks"
  role_arn = "${aws_iam_role.terraform-cluster.arn}"

  vpc_config {
    subnet_ids = ["${aws_subnet.main.id}", "${aws_subnet.main2.id}"]
  }
}
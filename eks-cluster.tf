provider "kubernetes" {
    load_config_file = "false"
    host = data.aws_eks_cluster.myapp-eks.endpoint
    token = data.aws_eks_cluster.myapp-eks.token
    cluster_ca_certificate = base64decode(data.data.aws_eks_cluster.myapp-eks.certificate_authority.0.data)
}

data "aws_eks_cluster" "myapp-eks" {
    name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "myapp-eks" {
    name = module.eks.cluster_id
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.0.4"

  cluster_name = "eks-cluster"
  cluster_version = "2.20"

  subnets = module.myapp-vpc.private_subnets
  vpc_id = module.myapp-vpc.vpc_id

  tags = {
    environment = "development"
    application = "app"
  }

  worker_groups = [
    {
        instance_type = "t2.micro"
        name = "worker-group-1"
        asg_desired-capacity = 3
    }
  ]
}


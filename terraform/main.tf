module "aws-networking" {
  source  = "github.com/cailleach-devops/terraform-aws-networking.git"

  initiative = var.initiative
  environment = var.environment
  bucket_prefix = var.bucket_prefix

  # ===== DOESN'T change above this line =====

}

module "ecs-cluster" {
  source  = "github.com/cailleach-devops/terraform-aws-ecs-cluster.git"

  naming = module.naming

  # ===== DOESN'T change above this line =====
  
}


variable "ecs-target-group-arn" {}

variable "ecs-cluster-name" {
    default = "test-ecs-cluster"
}

variable "ecs-service-role-arn" {
    default = "test-ecs-cluster"
}

variable "ecs-service-name" {
    default = "test-ecs-service"
}

variable "ecs-load-balancer-name" {
    default = "test-ecs-load-balancer"
}


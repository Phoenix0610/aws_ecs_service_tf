//----------------------------------------------------------------------
// Shared Variables
//----------------------------------------------------------------------

variable "vpc-id" {}
variable "subnet-id-1" {}
variable "subnet-id-2" {}
variable "security-group-id" {}
variable "ecs-cluster-name" {}
variable "ecs-instance-role-name" {}
variable "ecs-instance-profile-name" {}
variable "ecs-key-pair-name" {}

//----------------------------------------------------------------------
// Autoscaling Group Variables
//----------------------------------------------------------------------

variable "autoscaling-group-name" {
    description = "The name for the autoscaling group for the cluster."
    default     = "test-ecs-asg"
}

variable "max-instance-size" {
    description = ""
    default     = 1
}

variable "min-instance-size" {
    description = ""
    default     = 0
}

variable "desired-capacity" {
    description = ""
    default     = 1
}

variable "health-check-grace-period" {
    description = ""
    default     = 300
}

//----------------------------------------------------------------------
// Application Load Balancer Variables
//----------------------------------------------------------------------

variable "load-balancer-name" {
    description = "The name for the application load balancer"
    default     = "test-ecs-load-balancer"
}

variable "target-group-name" {
    description = "The name for the target group"
    default     = "test-ecs-target-group"
}

//----------------------------------------------------------------------
// Launch Configuration Variables
//----------------------------------------------------------------------

variable "launch-configuration-name" {
    description = ""
    default = "test-ecs-launch-configuration"
}

variable "image-id" {
    description = "The ami id with which the ecs ec2 instance is to be launched"
    default = "ami-0b69ea66ff7391e80"
}

variable "instance-type" {
    description = "the ec2 instance type"
    default = "t2.micro"
}

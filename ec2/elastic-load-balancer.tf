resource "aws_alb" "ecs-load-balancer" {
    name                = "${var.load-balancer-name}"
    internal            = true
    load_balancer_type = "application"
    security_groups     = ["${var.security-group-id}"]
    subnets             = ["${var.subnet-id-1}", "${var.subnet-id-2}"]
}

resource "aws_alb_target_group" "ecs-target_group" {
    name                = "${var.target-group-name}"
    port                = "8080"
    protocol            = "HTTP"
    vpc_id              = "${var.vpc-id}"
    slow_start          = 60

    health_check {
        healthy_threshold   = "5"
        unhealthy_threshold = "10"
        interval            = "30"
        matcher             = "200"
        path                = "/"
        port                = "traffic-port"
        protocol            = "HTTP"
        timeout             = "5"
    }
}

resource "aws_alb_listener" "alb-listener" {
    load_balancer_arn = "${aws_alb.ecs-load-balancer.arn}"
    port              = "8080"
    protocol          = "HTTP"
    
    default_action {
        target_group_arn = "${aws_alb_target_group.ecs-target_group.arn}"
        type             = "forward"
    }
}

output "ecs-load-balancer-name" {
  value = "${aws_alb.ecs-load-balancer.name}"
}

output "ecs-target-group-arn" {
  value = "${aws_alb_target_group.ecs-target_group.arn}"
}

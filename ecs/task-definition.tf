resource "aws_ecs_task_definition" "test-sample-definition" {
    family                = "test-sample-definition"
    container_definitions = "${file("./ecs/task-definition.json")}"
    requires_compatibilities = ["EC2"]
    network_mode = "bridge"
    cpu = "2048"
    volume {
    name      = "data01"
    host_path = "/data01"
  }
   volume {
    name      = "etc"
    host_path = "/etc"
  }
    }

resource "aws_ecs_task_definition" "todo_app" {
    name = "todo-app"

    container_definitions = [
        {
            name = "todo-app"
            image = "todo-app"
            memory = 512
            cpu = 256
        }
    ]
}

resource "aws_ecs_service" "todo_app" {
    name = "todo-app"
    cluster = "default"
    task_definition = aws_ecs_task_definition.todo_app.arn
    port = 5000

    desired_count = 1

    security_groups = [
        aws_security_group.todo_app.arn
    ]
}

resource "aws_security_group" "todo_app" {
    name = "todo-app"
    description = "Security group for the todo app"

    ingress {
        from_port = 5000
        to_port = 5000
        protocol = "tcp"
        cidr_blocks = ["192.168.1.100/32"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

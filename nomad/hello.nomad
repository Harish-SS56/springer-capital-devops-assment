# DevOps Intern Final Assessment - Nomad Job File
# This job file deploys the Hello DevOps container using Nomad

job "hello-devops" {
  # Specify the region and datacenters
  region = "global"
  datacenters = ["dc1"]

  # Service type - keeps the job running continuously
  type = "service"

  # Define the task group
  group "hello-group" {
    # Number of instances to run
    count = 1

    # Define the task
    task "hello-task" {
      # Use Docker driver
      driver = "docker"

      # Docker configuration
      config {
        # Use the Docker image built from our Dockerfile
        # In production, this would be pulled from a registry like Docker Hub
        image = "hello-devops:latest"
        
        # Alternatively, use Python base image and run command directly:
        # image = "python:3.11-slim"
        # command = "python"
        # args = ["-c", "print('Hello, DevOps!')"]
      }

      # Resource allocation
      resources {
        cpu    = 500  # 500 MHz
        memory = 256  # 256 MB
      }

      # Logging configuration
      logs {
        max_files     = 10
        max_file_size = 10  # MB
      }
    }

    # Restart policy
    restart {
      attempts = 3
      interval = "5m"
      delay    = "25s"
      mode     = "delay"
    }
  }
}

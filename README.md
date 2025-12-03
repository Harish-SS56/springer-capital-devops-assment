# DevOps Intern Final Assessment

**Name:** [Your Name Here]  
**Date:** December 3, 2025  
**Email:** [Your Email Here]

## Project Description

This repository demonstrates a complete DevOps workflow using open-source tools including Git, Linux scripting, Docker, GitHub Actions CI/CD, Nomad deployment, and Grafana Loki monitoring. Each component works together to simulate a realistic DevOps pipeline.

## Project Structure

```
devops-intern-final/
├── README.md
├── hello.py
├── Dockerfile
├── scripts/
│   └── sysinfo.sh
├── .github/
│   └── workflows/
│       └── ci.yml
├── nomad/
│   └── hello.nomad
└── monitoring/
    └── loki_setup.txt
```

## Build Status

![CI](https://github.com/[YOUR-USERNAME]/[YOUR-REPO]/workflows/CI/badge.svg)

---

## 1. Git & GitHub Setup

This repository was initialized with:
- README.md with project documentation
- Sample Python script (`hello.py`)
- Proper version control with Git

**Commands used:**
```bash
git init
git add .
git commit -m "Initial commit: DevOps assessment project"
git remote add origin https://github.com/[YOUR-USERNAME]/[YOUR-REPO].git
git push -u origin main
```

---

## 2. Linux & Scripting Basics

### System Information Script

The `scripts/sysinfo.sh` script displays:
- Current user
- Current date and time
- Disk usage statistics

**How to run:**
```bash
# Make script executable (on Linux/Mac)
chmod +x scripts/sysinfo.sh

# Run the script
./scripts/sysinfo.sh
```

**On Windows (Git Bash):**
```bash
bash scripts/sysinfo.sh
```

---

## 3. Docker Basics

### Containerizing the Application

The `Dockerfile` packages the Python application into a container.

**Build the Docker image:**
```bash
docker build -t hello-devops:latest .
```

**Run the container:**
```bash
docker run hello-devops:latest
```

**Expected output:**
```
Hello, DevOps!
```

**View running containers:**
```bash
docker ps
```

**Stop the container:**
```bash
docker stop [CONTAINER_ID]
```

---

## 4. CI/CD with GitHub Actions

### Automated Testing Pipeline

The GitHub Actions workflow (`.github/workflows/ci.yml`) automatically:
- Runs on every push to the repository
- Sets up Python environment
- Executes `hello.py` to verify functionality
- Displays build status via badge

**View pipeline runs:**
- Go to the "Actions" tab in your GitHub repository
- Each push triggers a new workflow run

---

## 5. Job Deployment with Nomad

### Nomad Service Deployment

The `nomad/hello.nomad` file defines a service that:
- Runs the Docker container
- Allocates minimal resources (256 MB RAM, 500 MHz CPU)
- Uses Docker driver for container orchestration

**Prerequisites:**
- Nomad installed and running
- Docker daemon running

**Deploy the job:**
```bash
nomad job run nomad/hello.nomad
```

**Check job status:**
```bash
nomad job status hello-devops
```

**View job logs:**
```bash
nomad alloc logs [ALLOCATION_ID]
```

**Stop the job:**
```bash
nomad job stop hello-devops
```

---

## 6. Monitoring with Grafana Loki

### Log Aggregation Setup

Loki is configured to collect and query logs from the containerized application.

**Setup instructions:**
- See `monitoring/loki_setup.txt` for detailed configuration
- Includes Docker Compose setup for Loki and Promtail
- Instructions for querying logs via LogCLI or Grafana

**Quick start:**
```bash
# Run Loki with Docker
docker run -d --name=loki -p 3100:3100 grafana/loki:latest

# Query logs
curl -G -s "http://localhost:3100/loki/api/v1/query" --data-urlencode 'query={job="hello-devops"}'
```

---

## Technologies Used

- **Version Control:** Git, GitHub
- **Scripting:** Bash, Python
- **Containerization:** Docker
- **CI/CD:** GitHub Actions
- **Orchestration:** HashiCorp Nomad
- **Monitoring:** Grafana Loki
- **Operating System:** Linux (scripting)

---

## Getting Started

### Prerequisites

- Git
- Python 3.8+
- Docker
- Nomad (optional, for deployment)
- Loki (optional, for monitoring)

### Clone the Repository

```bash
git clone https://github.com/[YOUR-USERNAME]/[YOUR-REPO].git
cd [YOUR-REPO]
```

### Run Locally

```bash
# Test Python script
python hello.py

# Test shell script (Linux/Mac/Git Bash)
bash scripts/sysinfo.sh

# Test Docker container
docker build -t hello-devops:latest .
docker run hello-devops:latest
```

---

## Assessment Checklist

- [x] Git & GitHub repository setup
- [x] README.md with documentation
- [x] hello.py Python script
- [x] scripts/sysinfo.sh Linux script
- [x] Dockerfile for containerization
- [x] GitHub Actions CI/CD pipeline
- [x] Nomad job configuration
- [x] Loki monitoring setup documentation

---

## License

This project is created for educational purposes as part of the DevOps Internship Final Assessment.

---

## Contact

**Name:** [Your Name]  
**Primary Email:** [Your Primary Email]  
**Secondary Email:** [Your Secondary Email]  
**Internship Period:** [Start Date] - [End Date]  
**Time Zone:** [Your Time Zone]

---

*Last Updated: December 3, 2025*

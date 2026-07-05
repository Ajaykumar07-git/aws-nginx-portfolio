# AWS Nginx Web Application Deployment

## Project Overview

This project demonstrates how to deploy a static web application on an Amazon Linux 2023 EC2 instance using Nginx. The deployment follows DevOps best practices such as version control with Git, automated deployment using shell scripting, logging, backups, and production-oriented Nginx configuration.

The project was built as part of a hands-on DevOps learning portfolio using only AWS infrastructure.

---

## Architecture

```
Developer
     │
     ▼
Git Repository
     │
     ▼
Deployment Script (deploy.sh)
     │
     ▼
Amazon Linux 2023 EC2
     │
     ▼
Nginx Web Server
     │
     ▼
Static Website
```

---

## Technologies Used

* AWS EC2 (Amazon Linux 2023)
* Nginx
* Git
* GitHub
* Bash Shell Scripting
* HTML
* Linux

---

## Project Structure

```text
aws-nginx-portfolio/
│
├── website/
│   ├── index.html
│   ├── 404.html
│   ├── 500.html
│   ├── css/
│   ├── js/
│   └── images/
│
├── nginx/
│   └── (Nginx configuration and backup files)
│
├── scripts/
│   └── deploy.sh
│
├── docs/
│   ├── architecture/
│   ├── screenshots/
│   └── troubleshooting.md
│
├── README.md
├── LICENSE
└── .gitignore
```


## Features

* Static website deployment
* Automated deployment using Bash
* Deployment logging
* Timestamped backups
* Custom 404 and 500 error pages
* Security headers
* Browser caching
* Gzip compression
* Git branching workflow
* Production-style project structure

---

## Deployment Steps

1. Clone the repository.
2. Copy website files to the server.
3. Run the deployment script.
4. Validate the Nginx configuration.
5. Reload Nginx.
6. Verify the website.

---

## Nginx Features Configured

* Custom document root
* Custom error pages
* Security headers
* Browser caching
* Gzip compression

---

## Monitoring

Useful commands:

```bash
sudo systemctl status nginx
sudo nginx -t
sudo journalctl -u nginx
sudo tail -f /var/log/nginx/access.log
sudo tail -f /var/log/nginx/error.log
```

---

## Future Improvements

* HTTPS using Let's Encrypt
* Docker containerization
* Jenkins CI/CD pipeline
* Reverse proxy configuration
* Monitoring with Prometheus and Grafana

---

## Learning Outcomes

Through this project, I gained hands-on experience with:

* Linux administration
* Nginx configuration
* Git and GitHub workflows
* Shell scripting
* Deployment automation
* Logging and troubleshooting
* Production-oriented web server configuration

---

## License

This project is provided for educational purposes.

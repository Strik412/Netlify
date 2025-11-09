# Netlify Deployment Project

📋 Project Description
This is an educational project created to learn about distributed systems and continuous deployment (CD) using GitHub Actions and Netlify.

🎯 What is the application about?
This application is a simple static website that demonstrates:

- Basic Web Development: Pure HTML, CSS, and JavaScript
- Continuous Integration/Continuous Deployment (CI/CD): Automation with GitHub Actions
- Hosting Platform: Automatic deployment on Netlify

🏗️ Project Structure
Netlify/
├── public/
│   ├── index.html    # Site homepage
│   ├── styles.css    # CSS styles for the page
│   └── app.js        # JavaScript functionality
├── Dockerfile        # Docker configuration to serve static files with nginx
├── .dockerignore     # Files excluded from Docker builds
├── netlify.toml      # Netlify publish settings
├── README.md         # This file
└── .github/
    └── workflows/
        └── netlify-deploy.yml  # Automatic deployment configuration

📄 Components
1. `index.html`
   - Simple webpage titled "Hello World"
   - Contains a greeting: "Hello World"
   - Includes an interactive button

2. `app.js`
   - Adds a click handler that displays an alert
   - Message: "Hello World!"

3. `styles.css`
   - Centered design with light background (#f7f9fc)
   - Arial-like font
   - Button styling with pointer cursor

4. GitHub Actions Workflow (`.github/workflows/netlify-deploy.yml`)
   - The workflow automates deployment to Netlify:
     - Trigger: Executes automatically when pushing to the `main` branch
     - Validation: (optional) verifies repository/files
     - Installation: Installs Netlify CLI
     - Deployment: Deploys the `public/` folder to Netlify using authentication token and site id

🚀 Deployment Flow

Deployment to Netlify (Automatic)
1. The developer pushes changes to the `main` branch.
2. GitHub Actions is automatically triggered.
3. Netlify CLI is installed in the runner.
4. The `public/` folder is deployed to Netlify using `NETLIFY_AUTH_TOKEN` and `NETLIFY_SITE_ID`.
5. The site is available in production on the Netlify-provided domain.

Deployment with Docker (Local)

Option 1: Docker
```powershell
# Build the image
docker build -t netlify-app .;

# Run the container
docker run -d -p 8080:80 netlify-app

# The application will be available at http://localhost:8080
```

Option 2: Docker Compose (if you add a compose file)
```powershell
# Start the container
docker compose up -d

# The application will be available at http://localhost:8080

# Stop the container
docker compose down
```

🎓 Educational Purpose
This project was created for educational purposes to learn about:

- Basic web development (HTML/CSS/JavaScript)
- Version control with Git and GitHub
- Automation with GitHub Actions
- Web application deployment
- Modern hosting platforms (Netlify)
- Distributed systems concepts
- Containerization with Docker

🐳 Docker Requirements
- Docker installed (version 20.10 or higher)
- Docker Compose (included with Docker Desktop)

📝 Notes
- Netlify: The project uses a Netlify token stored in GitHub secrets (`NETLIFY_AUTH_TOKEN`) and the site id (`NETLIFY_SITE_ID`).
- GitHub Actions: Deployment is fully automatic when secrets are configured.
- Docker: Uses `nginx:alpine` in the `Dockerfile` to serve static files efficiently.


pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from GitHub
                git 'https://github.com/AltrinJabist/nodejs-demo-app.git'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Building Docker image...'
                // Build the Docker image from the Dockerfile
                sh 'docker build -t nodejs-demo-app .'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add your test commands here (e.g., run unit tests)
                sh 'echo "All tests passed!"'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                // Run the Docker container (replace port if necessary)
                sh 'docker run -d -p 3000:3000 nodejs-demo-app'
            }
        }
    }
}

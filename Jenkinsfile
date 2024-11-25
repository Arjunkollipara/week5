pipeline {
    agent any  // Runs the pipeline on any available Jenkins agent

    environment {
        // You can define global environment variables here
        NODE_ENV = 'production'  // Set the Node environment to production
    }

    tools {
        nodejs 'nodejs-14'  // Specifies the Node.js installation to use (you need to set this up in Jenkins)
    }

    stages {
        // Stage 1: Clone the repository from GitHub
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository
                git 'https://github.com/shiv4j/week5.git'
            }
        }

        // Stage 2: Install dependencies using npm
        stage('Install Dependencies') {
            steps {
                // Install dependencies using npm
                script {
                    sh 'npm install'
                }
            }
        }

        // Stage 3: Run tests
        stage('Run Tests') {
            steps {
                // Run tests using npm (assuming you have a test script in your package.json)
                script {
                    sh 'npm test'
                }
            }
        }

        // Stage 4: Build the project (Optional, if applicable)
        stage('Build') {
            steps {
                // Example: Run a build command if needed
                script {
                    sh 'npm run build'  // Adjust the command based on your project setup
                }
            }
        }

        // Stage 5: Deploy (Optional)
        stage('Deploy') {
            steps {
                // Deploy the project (you can add commands like SSH, Docker, etc.)
                echo 'Deploying the application...'
                // Example: You could add commands to deploy the build to a staging server
            }
        }
    }

    post {
        success {
            // Actions after successful pipeline execution
            echo "Build, test, and deployment successful!"
        }
        failure {
            // Actions after a failed pipeline execution
            echo "Pipeline failed. Please check the logs."
        }
    }
}

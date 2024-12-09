
pipeline {
    agent any  

    environment {
       
        NODE_ENV = 'production'  
    }

    tools {
        nodejs 'nodejs-14'  
    }

    stages {
        
        stage('Clone Repository') {
            steps {
                
                git 'https://github.com/shiv4j/week5.git'
            }
        }

        
        stage('Install Dependencies') {
            steps {
                
                script {
                    sh 'npm install'
                }
            }
        }

        
        stage('Run Tests') {
            steps {
                
                script {
                    sh 'npm test'
                }
            }
        }

        
        stage('Build') {
            steps {
                
                script {
                    sh 'npm run build' 
                }
            }
        }

        
        stage('Deploy') {
            steps {
               
                echo 'Deploying the application...'
                
            }
        }
    }

    post {
        success {
            
            echo "Build, test, and deployment successful!"
        }
        failure {
            echo "Pipeline failed. Please check the logs."
        }
    }
}

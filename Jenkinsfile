pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        // timeout(time: 1, unit: 'SECONDS')
    }
    stages {
        stage('Build') {
            steps {
                sleep 85
                echo 'Front end builded'
            }
        }
        stage('Test') {
            steps {
                sleep 70   
                echo 'Front end test it'
            }
        }
        stage('Realase') {
            steps {
                sleep 30   
                echo 'Front end test it'
            }
        }
    }
}

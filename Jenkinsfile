pipeline {
    agent any
    // options {
        // Timeout counter starts AFTER agent is allocated
        // timeout(time: 1, unit: 'SECONDS')
    // }
    stages {
        stage('Build') {
            steps {
                sleep 96
                echo 'Front end builded'
            }
        }
        stage('Test') {
            steps {
                sleep 76   
                echo 'Front end test it'
            }
        }
        stage('Realase') {
            steps {
                sleep 29   
                echo 'Front end release it'
            }
        }
    }
}

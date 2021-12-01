pipeline {
    agent {
        docker { image 'pradeepkumar95/angular:v2'}
    }
    stages {
        stage('Compile') {
            steps {
                echo 'Compile the source code' 
            }
        }
        stage('Run Unit Tests') {
            steps {
                echo 'Run unit tests from the source code'
                sh 'npm install'
                sh 'npm rebuild node-sass'
                sh 'ng test --watch=false'
            }
        }
    }
}

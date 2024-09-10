// SCRIPTED PIPELINE
// node {
//     stage('Build') {
//         docker.image('node:16-buster-slim').inside('-p 3000:3000') {
//             sh 'npm install'
//         }
//     }

//     stage('Test') {
//         docker.image('node:16-buster-slim').inside('-p 3000:3000') {
//             sh './jenkins/scripts/test.sh'
//         }
//     }
//     stage('Manual Approval'){
//         input message: 'Lanjutkan ke tahap Deploy ?(klik "Proceed" untuk melanjutkan eksekusi pipeline ke tahap Deploy)' 
//     }
//     stage('Deploy') { 
//         docker.image('node:16-buster-slim').inside('-p 3000:3000')  {
//             sh './jenkins/scripts/deliver.sh' 
//             sh './jenkins/scripts/kill.sh' 
//         }
//     }
// }

// DECLRATIVE PIPELINE
pipeline {
    agent {
        docker {
            image 'node:16-buster-slim'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Manual Approval'){
            steps{
                input message: 'Lanjutkan ke tahap Deploy ?(klik "Proceed" untuk melanjutkan eksekusi pipeline ke tahap Deploy)' 
            }
        }
        stage('Deploy') { 
            steps {
                sh './jenkins/scripts/deliver.sh' 
                sh './jenkins/scripts/kill.sh' 
            }
        }
    }
}

pipeline {
    agent any

    stages {
        stage('Checkout Info') {
            steps {
                echo 'Code da duoc Jenkins lay tu GitHub'
                sh '''
                    pwd
                    ls -la
                '''
            }
        }

        stage('Run Script') {
            steps {
                sh '''
                    chmod +x hello.sh
                    ./hello.sh
                '''
            }
        }

        stage('Create Report') {
            steps {
                sh '''
                    mkdir -p results
                    echo "Pipeline from Jenkinsfile" > results/report.txt
                    echo "Job name: $JOB_NAME" >> results/report.txt
                    echo "Build number: $BUILD_NUMBER" >> results/report.txt
                    echo "Workspace: $WORKSPACE" >> results/report.txt
                    date >> results/report.txt

                    cat results/report.txt
                '''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'results/**', allowEmptyArchive: true
        }

        success {
            echo 'Build from Jenkinsfile thanh cong'
        }

        failure {
            echo 'Build from Jenkinsfile that bai'
        }
    }
}
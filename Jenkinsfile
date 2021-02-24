pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "MAVEN_HOME"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/mmehta-10/selenium-cucumber.git'

                sh "/sbin/ldconfig -v"

                // Run Maven on a Unix agent.
                withMaven {
                    sh "mvn --no-transfer-progress -Dmaven.test.failure.ignore=true clean package"
                }

                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }

          stage ('Cucumber Reports') {
            steps {
                cucumber buildStatus: "UNSTABLE",
                    fileIncludePattern: "**/cucumber.json",
                    jsonReportDirectory: 'target'
            }
        }
    }

                post {
                    // If Maven was able to run the tests, even if some of the test
                    // failed, record the test results and archive the jar file.
                    success {
                        junit '**/target/surefire-reports/TEST-*.xml'
                        archiveArtifacts 'target/*.jar'
                    }
                }
}

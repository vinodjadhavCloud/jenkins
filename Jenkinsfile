pipeline{
    agent any{
        stages{
            stage ('scm checkout'){
                steps{
                    git branch: 'main', url: 'https://github.com/vinodjadhavCloud/jenkins.git'
                }
            }
            stage ('validate and compile'){
                withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
                sh 'mvn compile'
            }
            stage('testonly'){
                echo "hello,class file added"
            }
        }
    }                                               
}
}
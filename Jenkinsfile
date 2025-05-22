pipeline{
    agent any
        stages {
            stage ('scm checkout'){
                steps{
                    git branch: 'main', url: 'https://github.com/vinodjadhavCloud/jenkins.git'
                }
            }
            stage ('validate and compile'){
                steps{
                     withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) 
                     sh 'mvn compile'                       
                } 
                } 
                    

            stage ('testonly'){
                steps{
                    echo "hello,class"
                }                
               }                                               
}
}
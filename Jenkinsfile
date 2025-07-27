pipeline{
 agent none
  
  options {
    skipDefaultCheckout()
  }
  
  tools {
    maven 'apache-maven-3.9.11'
  }
  
  stages{
    
    stage ('clonning-git') {
      agent {
        label 'built-in'
      }
      steps{
        dir('/mnt/project'){
        sh "sudo rm -rf *"
        checkout scm
        }
      }
    }
    
  stage ('build-maven-jar-file') {
    agent {
      label 'built-in'
    }
    steps{
      dir('/mnt/project')
       sh 'sudo rm -rf /root/.m2/repository'
       sh 'mvn clean install'      
    }
  }
    
    stage ('copying-jar-file-') {
      agent {
        label 'built-in'
      }
      steps {
       dir('/mnt/jars') {
         sh 'sudo cp -r /mnt/project/target/*.jar .'
       }
      }
    }
    
  }
}

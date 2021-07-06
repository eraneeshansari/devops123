pipeline{
     agent any

    stages{
         stage("Build Docker Image"){
            steps{
              sh "docker build . -t 966145/testweb:v1"
    }
 }
        stage("Push Image"){
             steps{
                withCredentials([string(credentialsId: 'dhubpass', variable: 'pass')]) {
                   sh "docker login -u 966145 -p ${pass}"
                   sh "docker push 966145/testweb:v1"

}
                
}
  
  }

}







}

pipeline{
     agent any
     environment{
         BUILD_TAG = gettag()
}
    stages{
         stage("Build Docker Image"){
            steps{
              sh "docker build . -t 966145/testweb:${BUILD_TAG}"
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


def gettag(){
           def tag = sh script: 'git rev-parse HEAD', returnstdout: true
           return tag

}




}

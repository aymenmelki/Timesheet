pipeline {
    environment { 

        registry = "YourDockerhubAccount/YourRepository" 

        registryCredential = 'dockerhub' 

        dockerImage = '' 

    }

       agent any
       
           stages{

           

            stage("Test,Build"){
               steps{

                   bat "mvn clean install"
                    }

                  }

              stage("package"){
               steps{

                   bat "mvn package"
                    }

                  }
                  
               stage("Sonar"){
               steps{

                   bat "mvn sonar:sonar"
                    }

                  }
             
                  
                  
                  

        stage('Cloning our Git') { 

            steps { 

                git 'https://github.com/aymenmelki/Timesheet' 

            }

        } 

        stage('Building our image') { 

            steps { 

                script { 

                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 

                }

            } 

        }

        stage('Deploy our image') { 

            steps { 

                script { 

                    docker.withRegistry( '', registryCredential ) { 

                        dockerImage.push() 

                    }

                } 

            }

        } 

        stage('Cleaning up') { 

            steps { 

                sh "docker rmi $registry:$BUILD_NUMBER" 

            }

        } 

    }
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                
                  
           }
       
       
       
       
}

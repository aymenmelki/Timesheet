pipeline {

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
                  
                stage("Nexus"){
               steps{

                   bat "mvn deploy"
                    }

                  }
                  
                  stage("docker,build"){
               steps{

                   bat "FROM openjdk:8-jdk-alpine EXPOSE 8083 ADD target/docker-spring-boot.war docker-spring-boot.war  ENTRYPOINT["java","-jar","/docker-spring-boot.war"]"
                    }

                  }
                  
                  
           }
       
       
       
       
}

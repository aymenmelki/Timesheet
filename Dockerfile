FROM openjdk:8-jdk-alpine
EXPOSE 8083
ADD target/Timesheet.jar Timesheet.jar
ENTRYPOINT ["java","-jar","/Timesheet.war"]

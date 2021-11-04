FROM openjdk:8-jdk-alpine
EXPOSE 8083
ADD target/Timesheet.war Timesheet.war
ENTRYPOINT ["java","-jar","/Timesheet.war"]

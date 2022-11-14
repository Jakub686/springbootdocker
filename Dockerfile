FROM openjdk:8
EXPOSE 8080
ADD target/spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]

#1. copy this into pom.xml
#</plugins>
#<finalName>spring-boot-docker</finalName>
#</build>
#2. mvn install
#3. in CMD, in project directory  ' docker build -t spring-boot-docker.jar . '
#4. in CMD ' docker image '
#5. in CMD ' docker run -p 9090:8080 spring-boot-docker.jar '
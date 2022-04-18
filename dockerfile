FROM maven:3-jdk-11 AS mvn  
RUN git clone https://github.com/jithinchacko/spring-petclinic.git && cd spring-petclinic && mvn package 


FROM openjdk:11 
COPY --from=mvn  /spring-petclinic/target/spring-petclinic-2.4.0.BUILD-SNAPSHOT.jar /spring-petclinic-2.4.0.jar  
EXPOSE 8080 
CMD ["java", "-jar", "/spring-petclinic-2.4.0.jar"]
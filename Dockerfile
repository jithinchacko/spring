FROM openjdk:8 
LABEL author='Jithin'
ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar /springpet.jar
EXPOSE 8080
CMD java -jar /springpet.jar
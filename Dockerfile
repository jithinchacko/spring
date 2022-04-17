FROM openjdk:8 
LABEL author='Jithin'
ADD https://github.com/jithinchacko/spring-petclinic.git /springpet.jar
EXPOSE 8080
CMD java -jar /springpet.jar
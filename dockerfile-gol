FROM maven:3-jdk-8 AS mvnpkg 
RUN git clone https://github.com/jithinchacko/game-of-life.git && cd game-of-life && mvn package 

FROM tomcat:8 
copy --from=mvnpkg  /game-of-life/gameoflife-web/target/gameoflife.war  /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080



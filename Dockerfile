# Use official Tomcat image with JDK 8
FROM tomcat:9-jdk8

# Remove default web applications (optional, to keep it clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to ROOT.war so it's deployed as the root app
COPY myweb.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat's default port
EXPOSE 8080

# The CMD is inherited from the Tomcat image, which runs Tomcat automatically

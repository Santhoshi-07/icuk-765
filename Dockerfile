# Use official Tomcat 9 with JDK 8 image
FROM tomcat:9-jdk8

# Remove default webapps (optional cleanup)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to the ROOT app (rename to ROOT.war)
COPY myweb.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat's default port
EXPOSE 8080

# Tomcat starts automatically; no CMD or ENTRYPOINT needed

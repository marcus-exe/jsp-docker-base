# Use the official Tomcat image from Docker Hub
FROM tomcat:latest

# Copy your JSP project into the Tomcat webapps directory
COPY ./web /usr/local/tomcat/webapps/web

# Expose the default Tomcat port
EXPOSE 8080

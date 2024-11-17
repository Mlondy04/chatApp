# Use a base image for Java applications
FROM openjdk:23-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file built by Spring Boot
COPY target/chatApp-0.0.1-SNAPSHOT.jar app.jar


# Expose the port that your application will run on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]



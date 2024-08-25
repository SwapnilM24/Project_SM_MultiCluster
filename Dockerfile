# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/myapp-1.0.0.jar /app/myapp-1.0.0.jar

# Expose the application port (adjust the port number based on your app's configuration)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "myapp-1.0.0.jar"]

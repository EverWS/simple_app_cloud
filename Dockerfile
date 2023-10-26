# Use the base image of Java 8 with Alpine Linux
FROM openjdk:17-jdk-alpine

# Define the working directory inside the container
WORKDIR "/home"

# Copy all contents from the local directory to the working directory in the container
COPY . .

# Install Maven
RUN apk add --no-cache maven

# Set the working directory to the directory where the pom.xml file is located
WORKDIR "/home/demo"

# Execute the Maven command to build the Spring Boot project
RUN mvn clean package

# Expose port 8080 so you can access the application
EXPOSE 8080

# Start the Spring Boot application
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]

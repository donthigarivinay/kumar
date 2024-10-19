# Use an appropriate base image with JDK
FROM openjdk:11-jdk-slim

# Set working directory
WORKDIR /usr/src/hello

# Copy the Java file into the container
COPY hello.java .

# Compile the Java file
RUN javac hello.java

# Run the compiled Java class
CMD ["java", "hello"]

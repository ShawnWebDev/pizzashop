FROM amazoncorretto:21 AS builder
WORKDIR /app
RUN yum install -y tar gzip
# Copy maven wrapper and pom file to /app dir
COPY mvnw .
RUN chmod +x mvnw
COPY .mvn .mvn
COPY pom.xml .
# Copy the source code
COPY src src
# Clean target dir and build the application using Maven Wrapper
RUN ./mvnw clean package -DskipTests

# Stage 2: Create the runtime image
FROM amazoncorretto:21-alpine-jdk AS runtime

WORKDIR /app

# Copy the built JAR from the builder stage
COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
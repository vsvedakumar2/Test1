FROM maven:3.8-openjdk-11 as builder
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:11-jre-slim
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]

# Usar una imagen base con OpenJDK 20
FROM openjdk:20-jdk-slim AS build

# Instalar Maven en el contenedor
RUN apt-get update && apt-get install -y maven

# Definir el directorio de trabajo
WORKDIR /app

# Copiar los archivos de Maven (pom.xml)
COPY pom.xml .

# Descargar las dependencias de Maven
RUN mvn dependency:go-offline

# Copiar el código fuente
COPY src /app/src

# Compilar el proyecto con Maven (creará un archivo JAR en el directorio target)
RUN mvn package -DskipTests

# Usar una imagen base con OpenJDK 20 para ejecutar la aplicación
FROM openjdk:20-jdk-slim

# Definir el directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR del contenedor de construcción
COPY --from=build /app/target/App-1.0-SNAPSHOT.jar /app/App.jar

# Exponer el puerto si la aplicación usa algún servidor (por ejemplo, 8080)
# EXPOSE 8080

# Ejecutar el archivo JAR
CMD ["java", "-jar", "App.jar"]

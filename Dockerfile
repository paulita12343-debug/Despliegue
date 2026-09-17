# 1. Usar Tomcat 10 con Java 17
FROM tomcat:10.1-jdk17

# 2. Limpiar las aplicaciones por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copiar el archivo .war desde la raíz del repositorio a webapps/ROOT.war
COPY *.war /usr/local/tomcat/webapps/ROOT.war

# 4. Exponer el puerto
EXPOSE 8080

# 5. Iniciar Tomcat
CMD ["catalina.sh", "run"]

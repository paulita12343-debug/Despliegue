# 1. Cambiar a Tomcat 10 con Java 17 (soporta jakarta.servlet.*)
FROM tomcat:10.1-jdk17-corretto

# 2. Limpiar las aplicaciones por defecto
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copiar el WAR desde la raíz a ROOT.war
COPY *.war /usr/local/tomcat/webapps/ROOT.war

# 4. Exponer el puerto
EXPOSE 8084

# 5. Iniciar Tomcat
CMD ["catalina.sh", "run"]

# Usa una imagen oficial de Tomcat
FROM tomcat:9.0

# Elimina la app por defecto (opcional pero recomendado)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copia tu WAR y despliega como ROOT
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponer el puerto estándar de Tomcat
EXPOSE 8080

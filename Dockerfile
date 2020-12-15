FROM camunda/camunda-bpm-platform:tomcat-latest

RUN apk add lcms
RUN apk add lcms2

COPY conf/context.xml /camunda/webapps/manager/META-INF/context.xml
COPY conf/tomcat-users.xml /camunda/conf/tomcat-users.xml
COPY conf/server.xml /camunda/conf/server.xml

USER root
RUN apk add vim rsync

FROM 100.125.5.235:20202/op_svc_servicestage/tomcat:8-slim-int

ENV DIR_WEBAPP /usr/local/tomcat/webapps/

RUN  rm -rf $DIR_WEBAPP/*

ADD target/*.war $DIR_WEBAPP/ROOT.war

CMD ["catalina.sh", "run"]

FROM tomcat:8.0
RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD http://www.nets.eu/dk-da/Service/kundeservice/nemid-tu/NemID-tjenesteudbyderpakken-okt-2014/Documents/tuexample-1.174.0.war /usr/local/tomcat/webapps/ROOT.war

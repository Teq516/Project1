FROM tomcat:latest
RUN apt-get update;apt-get upgrade -y;apt-get install wget git maven -y
RUN git clone https://github.com/Teq516/SampleRegistratonForm.git
RUN cp -rp SampleRegistratonForm/* .
RUN mvn validate
RUN mvn compile
RUN mvn test
RUN mvn pacakage
RUN mvn verify
RUN mvn install
RUN targer/Registration.war  webapps/ROOT.war
CMD ["catalina.sh", "run"]

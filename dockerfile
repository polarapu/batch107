FROM redhat/ubi8:latest
MAINTAINER "Prasad"
RUN touch /opt/file1
RUN mkdir /opt/dir1
RUN yum install git -y
RUN git config --global user.name "Prasad Polarapu"
RUN git config --global user.email "prasad@gmail.com"
WORKDIR /opt
RUN git clone https://github.com/polarapu/batch107.git
RUN yum install wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.34/bin/apache-tomcat-10.1.34.tar.gz
RUN touch /opt/f1
RUN tar -xvf apache-tomcat-10.1.34.tar.gz
COPY tomcat-users.xml /opt/apache-tomcat-10.1.34/conf/
#ENV export JAVA_HOME=/path
EXPOSE 8080
#ENTRYPOINT git --version
CMD git --version

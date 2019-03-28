#使用的基础镜像
FROM docker-server:5000/base_image:0.0.2
#作者信息
MAINTAINER weiyichao "weiyichao@mastercom.cn"


#创建根目录
RUN mkdir -p /home/Services/


#添加war文件
ADD target/jenkinsMaven.war /usr/local/tomcat/apache-tomcat-9.0.16/webapps/

#暴露服务接口
EXPOSE 9060

#工作目录
WORKDIR /home/Services/

#启动服务
ENTRYPOINT ["/usr/local/tomcat/apache-tomcat-9.0.16/bin/catalina.sh","run"]
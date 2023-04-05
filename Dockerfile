FROM maven:3.5-jdk-8-alpine as builder

#工作目录
WORKDIR /app
COPY pom.xml .
COPY src ./src

CMD "java","-jar","/app/target/yuapi-interface-0.0.1-SNAPSHOT.jar","--spring.profiles.active=prod"
#CMD "java","-jar","/app/target/yuapi-interface-0.0.1-SNAPSHOT.jar","--spring.profiles.active=prod"
# 运行过程中创建一个mall-tiny-docker-file.jar文件
RUN bash -c 'touch /mall-tiny-docker-file.jar'
# 声明服务运行在8080端口
#EXPOSE 8080

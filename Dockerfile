FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y openjdk-7-jdk
WORKDIR /root
RUN mkdir src
RUN mkdir bin
COPY HelloWorld.java src/
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]


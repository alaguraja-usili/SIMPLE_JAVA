FROM alpine
COPY src /home/root/java/src
WORKDIR /home/root/java
RUN mkdir bin
RUN javac -d bin src/add.java
ENTRYPOINT ["java", "-cp", "bin", "add"]

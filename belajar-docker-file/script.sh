# FROM Instruction
docker build -t pinnie/from from
docker image  ls

# RUN Instruction
docker build -t pinnie/run run 
docker build -t pinnie/run run --progress=plain --no-cache #Melihat detail progress dan tanpa ada cache

# CMD Instruction
docker build -t pinnie/command command
docker image inspect pinnie/command

docker container create --name command pinnie/command
docker container start command
docker container logs command

# LABEL Instruction
docker build -t pinnie/label label
docker image inspect pinnie/label

# ADD Instruction
docker build -t pinnie/add add
docker container create --name add pinnie/add
docker container start add
docker container logs add

# COPY Instruction
docker build -t pinnie/copy copy
docker container create --name copy pinnie/copy
docker container start copy
docker container logs copy

# .dockerignore Instruction 
docker build -t pinnie/ignore ignore
docker container create --name ignore pinnie/ignore
docker container start ignore
docker container logs ignore

# EXPOSE Instruction 
docker build -t pinnie/expose expose
docker image inspect pinnie/expose
docker container create --name expose -p 8080:8080 pinnie/expose
docker container start expose
docker container ls
docker container stop expose




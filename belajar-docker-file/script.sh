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

# ENV Instruction
docker build -t pinnie/env env
docker image inspect pinnie/env
docker container create --name env --env APP_PORT=9090 -p 9090:9090 pinnie/env
docker container start env
docker container logs env
docker container stop env 

# VOLUME Instruction
docker build -t pinnie/volume volume 
docker image inspect pinnie/volume 
docker container create --name volume -p 8080:8080 pinnie/volume 
docker container start volume
docker container logs volume
docker container inspect volume 
"Mounts": [
            {
                "Type": "volume",
                "Name": "b47497fbf0c215fdf24169bcbb5324291340a33589c9c5ce59343bdbf2d81ad5",
                "Source": "/var/lib/docker/volumes/b47497fbf0c215fdf24169bcbb5324291340a33589c9c5ce59343bdbf2d81ad5/_data",
                "Destination": "/logs",
                "Driver": "local",
                "Mode": "",
                "RW": true,
                "Propagation": ""
            }
]



# WORKDIR Instruction 
dokcer build -t pinnie/workdir workdir
docker container create --name workdir -p 8080:8080 pinnie/workdir
docker container start workdir

docker container exec -i -t workdir /bin/sh


# USER Instruction
docker build -t pinnie/user user
docker container create --name user -p 8080:8080 pinnie/user
docker container start user

docker container exec -i -t user /bin/sh


# ARG Instruction
docker build -t pinnie/arg arg --build-arg app=pinn   # ARG hanya bisa di akses pada saat build time
docker container create --name arg -p 8080:8080 pinnie/arg # CMD itu pada saat runtime
docker container start arg
docker container exec -i -t arg /bin/sh


# HEALTHCHECK Instruction
docker build -t pinnie/health health 
docker container create --name health -p 8080:8080 pinnie/health
docker container start health
docker container ls 
docker container inspect health 

# ENTRYPOINT Instruction
docker build -t pinnie/entrypoint entrypoint
docker image inspect pinnie/entrypoint
docker container create --name entrypoint -p 8080:8080 pinnie/entrypoint
docker container start entrypoint 

# Multi Stage Build 
docker build -t pinnie/multi multi 
docker image ls
docker container create --name multi -p 8080:8080 pinnie/multi 
docker container start multi   

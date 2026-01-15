FROM golang:1.18-alpine
#Argument
#ARG hanya bisa jalan di buildtime, ketika image sudah jadi tidak bisa berubah 
#mendefinisikan argument dengan default value 'main'
ARG app=main

RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go

#memasukkan nilai ARG ke ENV agar dapat di pakai CMD/runtime 
ENV app=${app}  

EXPOSE 8080

CMD go run app/${app}.go


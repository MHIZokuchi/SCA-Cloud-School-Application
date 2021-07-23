# SCA-Cloud-School-Application
#### This is a simple asp.net core application, containerised with docker and  pushed to docker hub.

## Link to the docker image repo
 [Docker Repo](https://hub.docker.com/repository/docker/nneka234/sca-cloud-school-application)

## Docker Commands in Docker file

```sh

    FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build-env
    WORKDIR /app
    COPY ./SCA-Cloud-School-Application.csproj ./
    RUN dotnet restore
    COPY . ./
    RUN dotnet publish -c Release -o out
    FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
    WORKDIR /app
    COPY --from=build-env /app/out .
    ENTRYPOINT ["dotnet", "SCA-Cloud-School-Application.dll"]　
```
## Build the Docker file with this command
```sh

    CD to folder that App was stored
    docker build -t <NameofImage> ./docker
  
```
## Once build is complete, check the docker image with this command
```sh

    docker image ls
  
```
## Next, run the docker image
```sh

   docker run   -p 8080:80 <Name Of Image>:<Tag>
  
```
Ensure that the docker container is running fine by navigating to http://localhost:8080/Home/Index

## Push the docker image to docker hub
```sh

   docker login
   docker push <Name of Image>:<Tag>
  
```
    


# SCA-Cloud-School-Application
This is a simple asp.net core application, containerised with docker and  pushed to docker hub.

##DockerCommands

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
    
    
 [Docker Repo](https://hub.docker.com/repository/docker/nneka234/sca-cloud-school-application)

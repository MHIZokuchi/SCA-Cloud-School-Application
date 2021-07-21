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

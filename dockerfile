FROM mcr.microsoft.com/dotnet/sdk:3.1
WORKDIR /app
COPY ./SCA-Cloud-School-Application.csproj ./
RUN dotnet restore
COPY . ./
RUN dotnet publish -c Release -o out 
EXPOSE 80
CMD dotnet run
#  FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env
# WORKDIR /App

# # Copy everything
# COPY . ./
# # Restore as distinct layers
# RUN dotnet restore
# # Build and publish a release
# RUN dotnet publish -c Release -o out

# # Build runtime image
# FROM mcr.microsoft.com/dotnet/aspnet:7.0
# WORKDIR /App
# COPY --from=build-env /App/out .
# # EXPOSE 7208
# ENTRYPOINT ["dotnet", "AmonyCoffeeMIS.dll"]

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./

RUN dotnet restore

# Copy everything else and build
COPY . ./

RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS runtime

WORKDIR /app

COPY --from=build /app/out ./

ENTRYPOINT ["dotnet", "AmonyCoffeeMIS.dll"]

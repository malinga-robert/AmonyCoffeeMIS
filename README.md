# Instructions

Languages used: C#

Web framework: .NET 7

To run this project, do the following:

Download .NET 7 SDK here - https://dotnet.microsoft.com/en-us/download/dotnet/7.0

Run the installer and in the terminal run: 

```dotnet --version```

Output should show the dotnet version installed



Within VS code terminal, run the following commands:

Build the app:

```dotnet build```

Install certs required for the app to run:

```dotnet dev-certs https --trust```

NB: After running this command, reopen your browser


Run the app: 

```dotnet run```

Access the application on this URL: https://localhost:7208/

#To manually build the Docker image:

```docker build -t amonycoffeemis:v1 .```

#To manually run the Docker image:

```docker run --rm -d -p 5555:80/tcp amonycoffeemis:v1```

#Build the Docker-Compose file  

``` docker-compose build```
#Run the Docker-Compose file  

```docker-compose up```
  



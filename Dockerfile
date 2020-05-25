FROM mcr.microsoft.com/dotnet/core/sdk:3.1
COPY src /opt/code
WORKDIR /opt/code
RUN ["dotnet", "publish", "--configuration", "Release", "--output", "/opt/app"]
EXPOSE 80
CMD ["/bin/bash", "run.sh"]
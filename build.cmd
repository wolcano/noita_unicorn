@echo off

set sdk_file=dotnet-sdk-3.0.103-win-x64.exe
set sdk_url=https://download.visualstudio.microsoft.com/download/pr/848d3804-9a9c-42a0-8a53-40329bc7bf76/8f39c7ad960594e5ec7235c333b53733/dotnet-sdk-3.0.103-win-x64.exe

if not exist %sdk_file% (
	echo downloading .NET SDK 3.0.103
	powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%sdk_url%', '%sdk_file%')"
	echo starting installation of SDK
	start /wait %sdk_file%
)

dotnet build

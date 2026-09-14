if [ -d build ];then
	rm -r build
fi
dotnet publish -c Release src/Elden-Ring-Debug-Tool-WPF/Elden-Ring-Debug-Tool-WPF.csproj /p:EnableWindowsTargeting=true /p:PublishProfile=FolderProfile
mkdir build
cp -r src/Elden-Ring-Debug-Tool-WPF/bin/Publish/win-x64/Resources src/Elden-Ring-Debug-Tool-WPF/bin/Publish/win-x64/README.txt 'src/Elden-Ring-Debug-Tool-WPF/bin/Publish/win-x64/Elden Ring Debug Tool.exe' build
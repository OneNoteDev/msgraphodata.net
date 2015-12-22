setlocal
pushd %~dp0

if "%NugetMachineInstallRoot%" == "" goto :nocxcache

pushd %NugetMachineInstallRoot%
for /d %%d in (MSGraph.OData.*) do rd /s /q %%d
popd

call nuget install MSGraph.OData -OutputDirectory %NugetMachineInstallRoot% -Source %~dp0

goto :end

:nocxcache
echo Execute this command from a corext shell.

:end
popd
endlocal
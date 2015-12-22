setlocal
pushd %~dp0

call nuget pack build.nuspec -NoDefaultExcludes -NoPackageAnalysis -OutputDirectory .

popd
endlocal
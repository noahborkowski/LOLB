# Path to your renamed DLL
$dllPath = "bin\Release\netcoreapp2.2\LOLB.dll"

# Load the DLL into memory
$dllBytes = [System.IO.File]::ReadAllBytes($dllPath)
$assembly = [System.Reflection.Assembly]::Load($dllBytes)

# Get the class and method
$type = $assembly.GetType("EvilNamespace.EvilClass")
$method = $type.GetMethod("Execute")

# Invoke the static method
$method.Invoke($null, $null)

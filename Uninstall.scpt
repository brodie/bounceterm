set pluginFolder to do shell script "echo ~"
set pluginFolder to pluginFolder & "/Library/Application Support/SIMBL/Plugins/BounceTerm.bundle"

try
    do shell script "test -d " & quoted form of pluginFolder
on error
    display dialog "BounceTerm isn't installed" buttons {"OK"}
    return
end try

do shell script "rm -r " & quoted form of pluginFolder
display dialog "Removed " & pluginFolder buttons {"OK"}

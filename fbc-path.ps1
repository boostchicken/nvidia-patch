ls C:\$env:windir\System32\NvFB* | Rename-Item -NewName {$_.FullName.Replace('.dll',"_.dll")}
ls C:\$env:windir\SysWow64\NvFB* | Rename-Item -NewName {$_.FullName.Replace('.dll',"_.dll")}

Invoke-WebRequest -Uri  https://gist.github.com/Snawoot/17b14e7ce0f7412b91587c2723719eff/raw/e8e9658fd20751ad875477f37b49ea158ece896d/nvfbcwrp64.dll -OutFile $env:windir\System32\NvFBC64.dll
Invoke-WebRequest -Uri  https://gist.github.com/Snawoot/17b14e7ce0f7412b91587c2723719eff/raw/e8e9658fd20751a

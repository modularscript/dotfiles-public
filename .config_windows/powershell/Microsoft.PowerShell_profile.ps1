oh-my-posh init pwsh | Invoke-Expression
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/atomic.omp.json" | Invoke-Expression
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Import-Module -Name Terminal-Icons
Import-Module z
fnm env --use-on-cd | Out-String | Invoke-Expression
& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\easy-term.omp.json" --print) -join "`n"))

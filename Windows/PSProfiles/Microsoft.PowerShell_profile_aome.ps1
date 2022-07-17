Import-Module Terminal-Icons
New-Alias -Name g -Value goto

$Logo=([char]::ConvertFromUtf32(59151))

function goto {
    param (
        $location
    )

    Switch ($location) {
        "pr" {
            Set-Location -Path "$HOME/projects"
        }
        "bp" {
            Set-Location -Path "$HOME/projects/boilerplates"
        }
        "cs" {
            Set-Location -Path "$HOME/projects/cheat-sheets"
        }
        default {
            echo "Invalid location"
        }
    }
}

function kn {
    param (
        $namespace
    )

    if ($namespace -in "default","d") {
        kubectl config set-context --current --namespace=default
    } else {
        kubectl config set-context --current --namespace=$namespace
    }
}

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_DISTRO = "$Logo "
Invoke-Expression (&starship init powershell)
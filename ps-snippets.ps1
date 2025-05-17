function time {
    if ($args.Count -eq 0) {
        Write-Error "specify execution target path."
        return
    }
    $ExePath = $args[0]
    $Arguments = $args[1..($args.Count - 1)]
    if ($Arguments.Count -gt 0) {
        Measure-Command { Start-Process $ExePath -ArgumentList $Arguments -Wait -NoNewWindow } | Select-Object -Property TotalSeconds
    } else {
        Measure-Command { Start-Process $ExePath -Wait -NoNewWindow } | Select-Object -Property TotalSeconds
    }
}
# 指定した実行ファイル（および引数）を実行し、その実行時間（秒）を計測して表示する関数です。
# 引数の処理方法:
#   $args[0] : 実行するファイルのパス
#   $args[1]以降 : 実行ファイルに渡す引数（複数可）
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
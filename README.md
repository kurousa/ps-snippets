# PowerShell Snippets

PowerShellの便利なスニペット（コード片）、エイリアスとして処理できるようにしたコマンドを集めたものです。

## 概要

以下のPowerShellスニペットが含まれています：

- `time`
  - Linuxなどで使える`time`コマンド相当の処理

## 使用方法

各スニペットは独立したファイルとして提供されており、必要に応じて直接実行するか、自分のスクリプトに組み込むことができます。

```powershell
# PowerShell プロファイルに`time`エイリアスを追加する例
Add-Content -Path $PROFILE -Value (Get-Content -Path ".\time.ps1")
```

プロファイルを編集するには次のコマンドを実行します：

```powershell
notepad $PROFILE
```

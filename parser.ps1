$FolderPath = Read-Host -Prompt 'Input path to libraries folder.'
$FolderFinish = Read-Host -Prompt 'Input path to destination folder.'

$folders = Get-ChildItem $FolderPath -Recurse | Where-Object mode -like 'd*'
Foreach ($dir in $folders) {
    Get-ChildItem  $dir.FullName | ForEach-Object {
        if ($_.name -like '*.jar') {
            Copy-Item $_ -Destination $FolderFinish
        }
    }
}

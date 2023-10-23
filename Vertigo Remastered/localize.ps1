$isWin = [System.Environment]::OSVersion.Platform -eq 'Win32NT'

$baseDir = './vertigo_Data/StreamingAssets/Localization/'
$srcPath = "${baseDir}VREM_localization.dist.csv"
$dstPath = "${baseDir}VREM_localization.csv"
$jaPath = "${baseDir}VREM_localization.ja.csv"

if ($isWin) {
    $srcPath = $srcPath -replace '/', '\'
    $dstPath = $dstPath -replace '/', '\'
    $jaPath = $jaPath -replace '/', '\'
}

if (-not (Test-Path -Path $jaPath)) {
    Write-Warning "Error: ���{��̌���t�@�C����������܂���B�����菇�ɏ]���Ă��������B";
    Read-Host "Enter�������ďI��";
    exit 1
}

if (-not (Test-Path -Path $srcPath)) {
    if (Test-Path -Path $dstPath) {
        Copy-Item -Path $dstPath -Destination $srcPath
    }
}

if (-not (Test-Path -Path $srcPath)) {
    Write-Warning "Error: ���̌���t�@�C����������܂���BVertigo Remastered�̃C���X�g�[���f�B���N�g���ɐݒu���Ă��������B";
    Read-Host "Enter�������ďI��";
    exit 1
}

$src = Import-CSV -Delimiter "," -Path $srcPath -Encoding UTF8
$ja = Import-CSV -Delimiter "," -Path $jaPath -Encoding UTF8

$jaMap = @{}
foreach ($row in $ja) {
    $key = $($row.PSObject.Properties)[0].Value
    $jaMap[$key] = $row.ja
}

foreach ($row in $src) {
    $key = $($row.PSObject.Properties)[0].Value
    if ($jaMap.ContainsKey($key)) {
        $row.en = $jaMap[$key]
    }
}

$src | Export-Csv -Delimiter "," -NoTypeInformation -Force -Path $dstPath -Encoding UTF8

Read-Host "���{�ꉻ���������܂����BEnter�������ďI��";

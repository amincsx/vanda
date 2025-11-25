// This PowerShell script will fix the VirtualPantamHeavy.tsx file
// Run this in PowerShell from the project root

$file = "src/components/VirtualPantamHeavy.tsx"
$content = Get-Content $file -Raw

# Fix Product 2: Change from 14 notes to 9 notes (remove lines 50-54)
$content = $content -replace "(?s)        2: \{\r\n            audioPath: '/sounds',\r\n            notes: \{\r\n                '_0\.D_ding': '0\.D 3',\r\n                '_1\.A3': '1\.A3',\r\n                '_1\.Bb3': '2\.Bb3',\r\n                '_1\.C4': '3\.C4',\r\n                '_1\.D4': '4\.D4',\r\n                '_1\.E4': '5\.E4',\r\n                '_1\.F4': '6\.F4',\r\n                '_1\.G4': '7\.G4',\r\n                '_1\.A4': '8\.A4',\r\n                '_1\.C5': '9\.C5',\r\n                '_1\.D5': '10\.D5',\r\n                '_1\.E5': '11\.E5',\r\n                '_1\.F5': '12\.F5',\r\n                '_1\.A5': '13\.A5'\r\n            \}\r\n        \},", @"
        2: {
            audioPath: '/sounds',
            notes: {
                '_0.D_ding': '0.D 3',
                '_1.A3': '1.A3',
                '_1.Bb3': '2.Bb3',
                '_1.C4': '3.C4',
                '_1.D4': '4.D4',
                '_1.E4': '5.E4',
                '_1.F4': '6.F4',
                '_1.G4': '7.G4',
                '_1.A4': '8.A4'
            }
        },
"@

$content | Set-Content $file -NoNewline

Write-Host "Fixed Product 2 configuration in VirtualPantamHeavy.tsx" -ForegroundColor Green

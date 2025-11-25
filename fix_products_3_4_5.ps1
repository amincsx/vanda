// This PowerShell script will fix Products 3, 4, and 5 in VirtualPantamHeavy.tsx
// Run this in PowerShell from the project root

$file = "src/components/VirtualPantamHeavy.tsx"
$content = Get-Content $file -Raw

# 1. Fix Product 3: Change from 9 notes to 12 notes
$content = $content -replace "(?s)        3: \{\r\n            audioPath: '/sounds',\r\n            notes: \{\r\n                '_0\.D_ding': '0\.D 3',\r\n                '_1\.A3': '1\.A3',\r\n                '_1\.Bb3': '2\.Bb3',\r\n                '_1\.C4': '3\.C4',\r\n                '_1\.D4': '4\.D4',\r\n                '_1\.E4': '5\.E4',\r\n                '_1\.F4': '6\.F4',\r\n                '_1\.G4': '7\.G4',\r\n                '_1\.A4': '8\.A4'\r\n            \}\r\n        \},", @"
        3: {
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
                '_1.A4': '8.A4',
                '_1.C5': '9.C5',
                '_1.D5': '10.D5',
                '_1.E5': '11.E5'
            }
        },
"@

# 2. Fix Product 4: Change from 12 notes to 14 notes
$content = $content -replace "(?s)        4: \{\r\n            audioPath: '/sounds',\r\n            notes: \{\r\n                '_0\.D_ding': '0\.D 3',\r\n                '_1\.A3': '1\.A3',\r\n                '_1\.Bb3': '2\.Bb3',\r\n                '_1\.C4': '3\.C4',\r\n                '_1\.D4': '4\.D4',\r\n                '_1\.E4': '5\.E4',\r\n                '_1\.F4': '6\.F4',\r\n                '_1\.G4': '7\.G4',\r\n                '_1\.A4': '8\.A4',\r\n                '_1\.C5': '9\.C5',\r\n                '_1\.D5': '10\.D5',\r\n                '_1\.E5': '11\.E5'\r\n            \}\r\n        \},", @"
        4: {
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
                '_1.A4': '8.A4',
                '_1.C5': '9.C5',
                '_1.D5': '10.D5',
                '_1.E5': '11.E5',
                '_1.F5': '12.F5',
                '_1.A5': '13.A5'
            }
        },
"@

# 3. Fix Product 6 -> Product 5 (18 notes)
$content = $content -replace "(?s)        6: \{\r\n            audioPath: '/sounds',\r\n            notes: \{\r\n                '_0\.D_ding': '0\.D 3',\r\n                '_1\.A3': '1\.A3',\r\n                '_1\.Bb3': '2\.Bb3',\r\n                '_1\.C4': '3\.C4',\r\n                '_1\.D4': '4\.D4',\r\n                '_1\.E4': '5\.E4',\r\n                '_1\.F4': '6\.F4',\r\n                '_1\.G4': '7\.G4',\r\n                '_1\.A4': '8\.A4',\r\n                '_1\.C5': '9\.C5',\r\n                '_1\.D5': '10\.D5',\r\n                '_1\.E5': '11\.E5'\r\n            \}\r\n        \}", @"
        5: {
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
                '_1.A4': '8.A4',
                '_1.C5': '9.C5',
                '_1.D5': '10.D5',
                '_1.E5': '11.E5',
                '_1.F5': '12.F5',
                '_1.A5': '13.A5',
                '_1.C6': '14.C6',
                '_1.D6': '15.D6',
                '_1.E6': '16.E6',
                '_1.F6': '17.F6'
            }
        }
"@

# 4. Fix noteButtons logic
$newButtons = @"
    // Note display order - different for each product
    const noteButtons = (productId === 1) ? [
        // Product 1: 9 notes
        { id: '_0.D_ding', label: 'D3', key: 'a' },
        { id: '_1.A3', label: 'A3', key: 's' },
        { id: '_1.Bb3', label: 'Bb3', key: 'd' },
        { id: '_1.C4', label: 'C4', key: 'f' },
        { id: '_1.D4', label: 'D4', key: 'g' },
        { id: '_1.E4', label: 'E4', key: 'h' },
        { id: '_1.F4', label: 'F4', key: 'j' },
        { id: '_1.G4', label: 'G4', key: 'k' },
        { id: '_1.A4', label: 'A4', key: 'l' }
    ] : (productId === 3) ? [
        // Product 3: 12 notes
        { id: '_0.D_ding', label: 'D3', key: 'a' },
        { id: '_1.A3', label: 'A3', key: 's' },
        { id: '_1.Bb3', label: 'Bb3', key: 'd' },
        { id: '_1.C4', label: 'C4', key: 'f' },
        { id: '_1.D4', label: 'D4', key: 'g' },
        { id: '_1.E4', label: 'E4', key: 'h' },
        { id: '_1.F4', label: 'F4', key: 'j' },
        { id: '_1.G4', label: 'G4', key: 'k' },
        { id: '_1.A4', label: 'A4', key: 'l' },
        { id: '_1.C5', label: 'C5', key: 'z' },
        { id: '_1.D5', label: 'D5', key: 'x' },
        { id: '_1.E5', label: 'E5', key: 'c' }
    ] : (productId === 2 || productId === 4) ? [
        // Product 2 & 4: 14 notes
        { id: '_0.D_ding', label: 'D3', key: 'a' },
        { id: '_1.A3', label: 'A3', key: 's' },
        { id: '_1.Bb3', label: 'Bb3', key: 'd' },
        { id: '_1.C4', label: 'C4', key: 'f' },
        { id: '_1.D4', label: 'D4', key: 'g' },
        { id: '_1.E4', label: 'E4', key: 'h' },
        { id: '_1.F4', label: 'F4', key: 'j' },
        { id: '_1.G4', label: 'G4', key: 'k' },
        { id: '_1.A4', label: 'A4', key: 'l' },
        { id: '_1.C5', label: 'C5', key: 'z' },
        { id: '_1.D5', label: 'D5', key: 'x' },
        { id: '_1.E5', label: 'E5', key: 'c' },
        { id: '_1.F5', label: 'F5', key: 'v' },
        { id: '_1.A5', label: 'A5', key: 'b' }
    ] : [
        // Product 5: 18 notes
        { id: '_0.D_ding', label: 'D3', key: 'a' },
        { id: '_1.A3', label: 'A3', key: 's' },
        { id: '_1.Bb3', label: 'Bb3', key: 'd' },
        { id: '_1.C4', label: 'C4', key: 'f' },
        { id: '_1.D4', label: 'D4', key: 'g' },
        { id: '_1.E4', label: 'E4', key: 'h' },
        { id: '_1.F4', label: 'F4', key: 'j' },
        { id: '_1.G4', label: 'G4', key: 'k' },
        { id: '_1.A4', label: 'A4', key: 'l' },
        { id: '_1.C5', label: 'C5', key: 'z' },
        { id: '_1.D5', label: 'D5', key: 'x' },
        { id: '_1.E5', label: 'E5', key: 'c' },
        { id: '_1.F5', label: 'F5', key: 'v' },
        { id: '_1.A5', label: 'A5', key: 'b' },
        { id: '_1.C6', label: 'C6', key: 'n' },
        { id: '_1.D6', label: 'D6', key: 'm' },
        { id: '_1.E6', label: 'E6', key: ',' },
        { id: '_1.F6', label: 'F6', key: '.' }
    ];
"@

# Regex to find the noteButtons block. It's tricky because of nested brackets.
# We'll look for the start and end of the block.
$content = $content -replace "(?s)    // Note display order - different for each product\r\n    const noteButtons = .*?    \];", $newButtons

$content | Set-Content $file -NoNewline

Write-Host "Fixed Products 3, 4, 5 and noteButtons in VirtualPantamHeavy.tsx" -ForegroundColor Green

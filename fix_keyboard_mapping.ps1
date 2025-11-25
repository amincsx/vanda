// This PowerShell script will fix the keyboard mapping logic in VirtualPantamHeavy.tsx
// Run this in PowerShell from the project root

$file = "src/components/VirtualPantamHeavy.tsx"
$content = Get-Content $file -Raw

# New keyboard mapping logic
$newMapping = @"
        const handleKeyPress = (event: KeyboardEvent) => {
            const key = event.key.toLowerCase();
            const noteMap: { [key: string]: string } = (productId === 1) ? {
                // Product 1: 9 notes
                'a': '_0.D_ding',
                's': '_1.A3',
                'd': '_1.Bb3',
                'f': '_1.C4',
                'g': '_1.D4',
                'h': '_1.E4',
                'j': '_1.F4',
                'k': '_1.G4',
                'l': '_1.A4'
            } : (productId === 3) ? {
                // Product 3: 12 notes
                'a': '_0.D_ding',
                's': '_1.A3',
                'd': '_1.Bb3',
                'f': '_1.C4',
                'g': '_1.D4',
                'h': '_1.E4',
                'j': '_1.F4',
                'k': '_1.G4',
                'l': '_1.A4',
                'z': '_1.C5',
                'x': '_1.D5',
                'c': '_1.E5'
            } : (productId === 2 || productId === 4) ? {
                // Product 2 & 4: 14 notes
                'a': '_0.D_ding',
                's': '_1.A3',
                'd': '_1.Bb3',
                'f': '_1.C4',
                'g': '_1.D4',
                'h': '_1.E4',
                'j': '_1.F4',
                'k': '_1.G4',
                'l': '_1.A4',
                'z': '_1.C5',
                'x': '_1.D5',
                'c': '_1.E5',
                'v': '_1.F5',
                'b': '_1.A5'
            } : {
                // Product 5: 18 notes (Default)
                'a': '_0.D_ding',
                's': '_1.A3',
                'd': '_1.Bb3',
                'f': '_1.C4',
                'g': '_1.D4',
                'h': '_1.E4',
                'j': '_1.F4',
                'k': '_1.G4',
                'l': '_1.A4',
                'z': '_1.C5',
                'x': '_1.D5',
                'c': '_1.E5',
                'v': '_1.F5',
                'b': '_1.A5',
                'n': '_1.C6',
                'm': '_1.D6',
                ',': '_1.E6',
                '.': '_1.F6'
            };
"@

# Replace the old logic using regex
# We match from "const handleKeyPress" down to the closing brace of the noteMap definition
$content = $content -replace "(?s)        const handleKeyPress = \(event: KeyboardEvent\) => \{.*?            \} : \{\};", $newMapping

$content | Set-Content $file -NoNewline

Write-Host "Fixed keyboard mapping logic in VirtualPantamHeavy.tsx" -ForegroundColor Green

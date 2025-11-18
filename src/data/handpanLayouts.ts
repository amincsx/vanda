// Handpan SVG layouts and configurations extracted from VirtualPantam
export interface HandpanNote {
    id: string;
    cx: number;
    cy: number;
    rx?: number;
    ry?: number;
    transform?: string;
    label: string;
    textX: number;
    textY: number;
}

export interface HandpanLayout {
    notes: HandpanNote[];
    audioPath: string;
    noteMapping: { [key: string]: string };
}

export const handpanLayouts: { [productId: number]: HandpanLayout } = {
    1: {
        audioPath: '/sounds',
        noteMapping: {
            '_0.D_ding': '0.D 3',
            '_1.A3': '1.A3',
            '_1.Bb3': '2.Bb3',
            '_1.C4': '3.C4',
            '_1.D4': '4.D4',
            '_1.E4': '5.E4',
            '_1.F4': '6.F4',
            '_1.G4': '7.G4',
            '_1.A4': '8.A4'
        },
        notes: [
            {
                id: '_0.D_ding',
                cx: 567.29,
                cy: 577.5,
                rx: 125.94,
                ry: 160.43,
                transform: 'translate(-47.11 1120.46) rotate(-87.88)',
                label: 'D3',
                textX: 567.29,
                textY: 585
            },
            // Add other notes as needed...
        ]
    },
    // Will be populated dynamically or on-demand
};

export const productImages: { [productId: number]: string } = {
    1: '/D kord 9 note/D KORD 9 NOTE.webp',
    2: '/D kurd 14 note/D kurd 14 note.webp',
    3: '/galaxy D kurd 9 note/galaxy D kurd 9 note.webp',
    4: '/steel D kurd 12 note/steel d kurd 12 note.webp',
    6: '/D kurd 13 note/d kurd 13 note.webp'
};

export const productDescriptions: { [productId: number]: string } = {
    1: 'About D Kurd Scale',
    2: 'About C Major Scale',
    3: 'About A Minor Galaxy Scale',
    4: 'About G Major Scale',
    6: 'About D Kurd 13 Note Scale'
};
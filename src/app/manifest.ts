import { MetadataRoute } from 'next';

export default function manifest(): MetadataRoute.Manifest {
    return {
        name: 'Vanda Handpan - Premium Handmade Instruments',
        short_name: 'Vanda Handpan',
        description: 'Premium handmade handpan instruments crafted with precision and passion. Explore our collection of D Kurd, C Major, A Minor Galaxy scales and more.',
        start_url: '/',
        display: 'standalone',
        background_color: '#000000',
        theme_color: '#FFD700',
        icons: [
            {
                src: '/icon.webp',
                sizes: '192x192',
                type: 'image/webp',
            },
            {
                src: '/icon.webp',
                sizes: '512x512',
                type: 'image/webp',
            },
        ],
    };
}

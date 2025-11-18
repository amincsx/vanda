'use client';

import { Suspense, lazy } from 'react';

interface VirtualPantamProps {
    productId: number;
}

// Lightweight component that loads full functionality immediately
export default function VirtualPantam({ productId }: VirtualPantamProps) {
    // Lazy load the full interactive component immediately
    const InteractiveHandpan = lazy(() => import('./VirtualPantamHeavy'));

    return (
        <Suspense fallback={
            <div className="w-full h-[600px] flex items-center justify-center">
                <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-white"></div>
            </div>
        }>
            <InteractiveHandpan productId={productId} />
        </Suspense>
    );
}
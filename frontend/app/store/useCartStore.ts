import { create } from 'zustand';
import { persist } from 'zustand/middleware';

export interface CartItem {
    id: string;
    productId: number;
    name: string;
    price: number;
    basePrice: number;
    quantity: number;
    image: string;
    sku: string;
}

interface CartStore {
    items: CartItem[];
    isCartOpen: boolean;
    addItem: (item: CartItem) => void;
    removeItem: (id: string) => void;
    updateQuantity: (id: string, delta: number) => void;
    clearCart: () => void;
    openCart: () => void;
    closeCart: () => void;
    toggleCart: () => void;
}

export const useCartStore = create<CartStore>()(
    persist(
        (set) => ({
            items: [],
            isCartOpen: false,
            openCart: () => set({ isCartOpen: true }),
            closeCart: () => set({ isCartOpen: false }),
            toggleCart: () => set((state) => ({ isCartOpen: !state.isCartOpen })),
            addItem: (newItem) => set((state) => {
                const existingItem = state.items.find((item) => item.id === newItem.id);
                if (existingItem) {
                    return {
                        items: state.items.map((item) =>
                            item.id === newItem.id
                                ? { ...item, quantity: item.quantity + 1 }
                                : item
                        ),
                    };
                }
                return { items: [...state.items, newItem] };
            }),
            removeItem: (id) => set((state) => ({
                items: state.items.filter((item) => item.id !== id),
            })),
            updateQuantity: (id, delta) => set((state) => ({
                items: state.items.map((item) =>
                    item.id === id
                        ? { ...item, quantity: Math.max(1, item.quantity + delta) }
                        : item
                ),
            })),
            clearCart: () => set({ items: [] }),
        }),
        {
            name: 'mediunit-cart',
        }
    )
);

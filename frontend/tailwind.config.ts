/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./app/**/*.{js,ts,jsx,tsx,mdx}",
        "./components/**/*.{js,ts,jsx,tsx,mdx}",
    ],
    theme: {
        extend: {
            colors: {
                'medical-blue': {
                    DEFAULT: '#004A99', // Deep medical blue
                    light: '#E6F0FF',
                    dark: '#003366',
                },
                'slate-gray': {
                    DEFAULT: '#4A5568',
                    light: '#CBD5E0',
                    dark: '#2D3748',
                },
                'sage-green': {
                    DEFAULT: '#8FB399',
                    light: '#E2EBE5',
                },
                'clinic-white': '#FAFAFA',
            },
            borderRadius: {
                'none': '0',
                'sm': '0.125rem',
                DEFAULT: '0.25rem',
                'md': '0.375rem',
                'lg': '0.5rem',
                'xl': '0.75rem',
                '2xl': '1rem',
                '3xl': '1.5rem',
                '4xl': '2rem',
                'full': '9999px',
            },
            fontFamily: {
                sans: ['Inter', 'sans-serif'],
            },
        },
    },
    plugins: [],
}

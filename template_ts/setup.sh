#!/bin/bash

# Remove existing src folder if it exists
if [ -d "src" ]; then
  echo "🗑 Removing existing src folder..."
  rm -rf src
fi

# Create base src directory
mkdir -p src

# Assets
mkdir -p src/assets/images
# touch src/assets/images/hero_logo.png

# Components
mkdir -p src/components/ui
mkdir -p src/components/layout
mkdir -p src/components/movie

touch src/components/ui/Button.tsx
touch src/components/ui/Input.tsx
touch src/components/ui/Card.tsx

touch src/components/layout/Navbar.tsx
touch src/components/layout/Footer.tsx

# This section is just a template. customize based on the uniqueness of the project
touch src/components/movie/MovieCard.tsx
touch src/components/movie/MovieGrid.tsx
touch src/components/movie/MovieSearch.tsx

# Pages (NB: some components here are to be customized too based on the project)
mkdir -p src/pages
touch src/pages/Home.tsx
touch src/pages/MovieDetail.tsx
touch src/pages/TopRated.tsx

# Hooks
mkdir -p src/hooks
#touch src/hooks/useFetchMovies.ts

# Utils
mkdir -p src/utils
touch src/utils/helpers.ts

# Types
mkdir -p src/types
touch src/types/index.ts

# Root files
touch .env.local
touch src/App.tsx
touch src/main.tsx
touch src/main.css

# CSS
echo "@tailwind base;
@tailwind components;
@tailwind utilities;" > src/main.css

# main.tsx
echo "import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './main.css'
import App from './App.tsx'

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <App />
  </StrictMode>,
)" > src/main.tsx

# Create App.tsx as an empty component
echo 'const App = () => {
  return (
    <div className="text-3xl font-bold">
      <h1>Hello React + Tailwind!</h1>
    </div>
  )
}

export default App' > src/App.tsx

echo "✅ Project structure created successfully!"

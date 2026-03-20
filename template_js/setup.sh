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

touch src/components/ui/Button.jsx
touch src/components/ui/Input.jsx
touch src/components/ui/Card.jsx


touch src/components/layout/Navbar.jsx
touch src/components/layout/Footer.jsx

# This section is just a template. customize based on the uniqueness of the project
touch src/components/movie/MovieCard.jsx
touch src/components/movie/MovieGrid.jsx
touch src/components/movie/MovieSearch.jsx

# Pages (NB: some components here are to be customized too based on the project)
mkdir -p src/pages
touch src/pages/Home.jsx
touch src/pages/MovieDetail.jsx
touch src/pages/TopRated.jsx

# Hooks
mkdir -p src/hooks
#touch src/hooks/useFetchMovies.js

# Utils
mkdir -p src/utils
touch src/utils/helpers.js

# Root files
touch .env.local
touch src/App.jsx
touch src/main.jsx
touch src/main.css

# Root files
echo "@tailwind base;
@tailwind components;
@tailwind utilities;" > src/main.css

echo "import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './main.css'
import App from './App.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
  </StrictMode>,
)" > src/main.jsx

# Create App.jsx as an empty component
echo 'const App = () => {
  return (
    <div className="text-3xl font-bold">
      <h1>Hello React + Tailwind!</h1>
    </div>
  )
}

export default App' > src/App.jsx

echo "✅ Project structure created successfully!"

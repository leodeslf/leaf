# React Router

## Installation

```bash
npm i react-router-dom@latest
```

## Usage

Components:

- `BrowserRouter`
- `HashRouter`
- `Routes`
- `Route`
- `NavLink`
- `Link`

Hooks:

- `useRoutes` (equivalent to `Routes`)
- `useParams`
- `useSearchParams`
- `useLocation`
- `useNavigation`

```jsx
// index.jsx e.g.:
import React from 'react';
import { createRoot } from 'react-dom/client';
import App from './App';
import { createBrowserRouter, RouterProvider } from 'react-router-dom';

const router = createBrowserRouter([
  {
    path: '/',
    element: <div>Root element</div>,
    errorElement: <div>404 Error</div>
  }
]);

createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
```

---

Reference: [React Router (reactrouter.com)](https://reactrouter.com/en/main).

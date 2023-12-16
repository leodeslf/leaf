# React Router

## Installation

```bash
npm i react-router-dom@latest
```

## Usage

```jsx
// index.jsx e.g.:
import { createBrowserRouter, RouterProvider } from 'react-router-dom';
import { createRoot } from 'react-dom/client';
import { StrictMode } from 'react';
import App from './App';

const router = createBrowserRouter([
  {
    path: '/',
    element: <div>Root element</div>,
    errorElement: <div>404 Error</div>
  }
]);

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <RouterProvider {...{ router }} />
  </StrictMode>
);
```

Common components:

- [`BrowserRouter`](https://reactrouter.com/en/main/router-components/browser-router)
- [`HashRouter`](https://reactrouter.com/en/main/router-components/hash-router)
- [`Routes`](https://reactrouter.com/en/main/components/routes)
- [`Route`](https://reactrouter.com/en/main/route/route)
- [`NavLink`](https://reactrouter.com/en/main/components/nav-link)
- [`Link`](https://reactrouter.com/en/main/components/link)

Common hooks:

- [`useRoutes`](https://reactrouter.com/en/main/hooks/use-routes) (equivalent to `Routes`)
- [`useParams`](https://reactrouter.com/en/main/hooks/use-params)
- [`useSearchParams`](https://reactrouter.com/en/main/hooks/use-search-params)
- [`useLocation`](https://reactrouter.com/en/main/hooks/use-location)
- [`useNavigation`](https://reactrouter.com/en/main/hooks/use-navigation)

---

Reference: [React Router (reactrouter.com)](https://reactrouter.com/en/main).

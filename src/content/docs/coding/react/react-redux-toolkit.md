# React Redux / Redux Toolkit

## Installation

```bash
npm i @reduxjs/toolkit react-redux
```

## Usage

```javascript
// countSlice.js e.g.:
import { createSlice } from '@reduxjs/toolkit';

const initialState = 0;

const countSlice = createSlice({
  name: 'count',
  initialState,
  reducers: {
    add: (state, { payload }) => state += payload,
    reset: (state) => state = initialState
  }
});

export const { add, reset } = countSlice.actions;
export default countSlice.reducer;
```

```javascript
// store.js e.g.:
import { configureStore } from '@reduxjs/toolkit';
import countReducer from './countSlice';

const store = configureStore({
  reducer: {
    count: countReducer
  }
});

export default store;
```

```jsx
// index.js e.g.:
import React from 'react';
import { createRoot } from 'react-dom/client';
import App from './App';
import { Provider } from 'react-redux';
import store from './store';

createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
```

```jsx
// App.js e.g.:
import { useDispatch, useSelector } from "react-redux";
import { add, reset } from "./countSlice";

function App() {
  const dispatch = useDispatch();
  const { count } = useSelector(state => state);

  function addOneToCount() {
    dispatch(add(1));
  }

  function resetCount() {
    dispatch(reset());
  }

  return (
    <div>
      Count: {count}
      <button onClick={addOneToCount}>
        +1
      </button>
      <button onClick={resetCount}>
        RESET
      </button>
    </div>
  )
}
```

---

Reference:

- [Getting Started with Redux Toolkit (redux-toolkit.js.org)](https://redux-toolkit.js.org/introduction/getting-started).
- [Getting Started with React Redux (react-redux.js.org)](https://react-redux.js.org/introduction/getting-started).

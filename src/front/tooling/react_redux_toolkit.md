# React Redux / Redux Toolkit

```bash
# Install
npm i @reduxjs/toolkit react-redux
```

## Example

```js
// countSlice.js
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

```js
// store.js
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
// index.js
import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';

import { Provider } from 'react-redux';
import store from './store';

ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById('root')
);
```

```jsx
// App.js
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

More at:

- [Getting Started with Redux Toolkit](https://redux-toolkit.js.org/introduction/getting-started).
- [Getting Started with React Redux](https://react-redux.js.org/introduction/getting-started).

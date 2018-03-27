import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

const addLoggingToDispatch = (store) => {
  let storeDispatch = store.dispatch;
  return (action) => {
    console.log( store.getState() );
    console.log(action);
    storeDispatch(action);
    console.log( store.getState() );
  };
};

const addLoggingToDispatch2 = store => next => action => {
      console.log( store.getState() );
      console.log(action);
      next(action);
      console.log( store.getState() );
};

const applyMiddlewares = (store, ...middlewares) => {
  let dispatch = store.dispatch;
  middlewares.forEach( (mid) => {
    dispatch = mid(store)(dispatch);
  });
  return Object.assign({}, store, { dispatch });
};

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);

  // store.dispatch = addLoggingToDispatch(store);
  store = applyMiddlewares(store, addLoggingToDispatch2);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

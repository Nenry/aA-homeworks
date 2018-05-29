import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

// Phase2
// const addLoggingToDispatch= (store) => {
//   let oldDispatch = store.dispatch;
//
//   return (action) => {
//   let oldState = store.getState();
//   console.log(oldState);
//   console.log(action);
//   oldDispatch(action);
//   console.log(store.getState());
// };
// };

// Phase2
// const addLoggingToDispatch = store => next => action => {
//   console.log(store.getState());
//   console.log((action));
//   next(action);
//   console.log(store.getState());
// }

// Phase3
// const applyMiddlewares = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach((middleware) => {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assing({}, store, {dispatch});
// };

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  //Insert logging here!
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

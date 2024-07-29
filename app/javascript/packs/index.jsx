import React from 'react';
import ReactDOM from 'react-dom';
import App from '../App';

// Ensure that the App component file is located at src/app/javascript/App.js
// If it is located elsewhere, adjust the import path accordingly.

document.addEventListener('DOMContentLoaded', () => {
  // Create a new div element and append it to the body
  const container = document.createElement('div');
  document.body.appendChild(container);

  // Render the App component into the newly created div
  ReactDOM.render(
    <App />,
    container
  );
});

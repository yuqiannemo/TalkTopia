import React from 'react';
import ReactDOM from 'react-dom';
import WaterfallLayout from '../components/WaterfallLayout';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <React.StrictMode>
      <WaterfallLayout />
    </React.StrictMode>,
    document.getElementById('root')
  );
});
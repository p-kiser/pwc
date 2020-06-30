window.onload = () => {
    'use strict';

    // check browser support
    if ('serviceWorker' in navigator) {
        navigator.serviceWorker.register('./sw.js');
    }
}
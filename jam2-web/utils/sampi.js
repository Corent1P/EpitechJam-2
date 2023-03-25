/**
 * 
 *  Load modules dynamically
 */

/*
 * Example:
 * html -> <button onclick="sampiUse('alert')">Load Alert</button>
 * js -> (alert.js)
 * export default function showAlert() {
 *    alert('Hello World!');
 * }
 */

const sampiLoad = (moduleName) => {
    return import(`./${moduleName}.js`)
        .then(module => module.default);
}

const sampiUse = (moduleName) => {
    sampiLoad(moduleName)
        .then(module => module())
        .catch(error => console.error(error));
}
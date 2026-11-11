const assert = require('node:assert/strict');
const buggy = require('./venta-buggy').calcularVenta;
const fixed = require('./venta-fixed').calcularVenta;

// Las primeras verificaciones DEMUESTRAN defectos deliberados.
assert.notEqual(buggy(25, 4, 10).total, 100, 'Debe exponer el error de suma');
assert.ok(buggy(25, 10, 10).error, 'Debe exponer rechazo indebido del límite');
assert.equal(buggy(25, -2, 10).error, undefined, 'Debe exponer falta de validación negativa');

// Estas verificaciones deben pasar con la implementación corregida.
assert.deepEqual(fixed(25, 4, 10), { total: 100, stockFinal: 6 });
assert.deepEqual(fixed(25, 10, 10), { total: 250, stockFinal: 0 });
assert.equal(fixed(25, 11, 10).error, 'Stock insuficiente');
assert.equal(fixed(25, -2, 10).error, 'Datos inválidos');
assert.equal(fixed(25, 0, 10).error, 'Datos inválidos');
console.log('OK: defectos demostrados y correcciones verificadas (JavaScript).');

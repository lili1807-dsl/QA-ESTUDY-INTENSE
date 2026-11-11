// Código defectuoso intencional para practicar QA.
function calcularVenta(precio, cantidad, stock) {
  if (cantidad >= stock) return { error: 'Stock insuficiente' }; // ERROR: igualdad válida
  return { total: precio + cantidad }; // ERROR: suma en vez de multiplicación
}
module.exports = { calcularVenta };

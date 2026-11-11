function calcularVenta(precio, cantidad, stock) {
  if (![precio, cantidad, stock].every(Number.isFinite)) return { error: 'Datos inválidos' };
  if (precio < 0 || cantidad <= 0 || !Number.isInteger(cantidad) || !Number.isInteger(stock) || stock < 0)
    return { error: 'Datos inválidos' };
  if (cantidad > stock) return { error: 'Stock insuficiente' };
  return { total: precio * cantidad, stockFinal: stock - cantidad };
}
module.exports = { calcularVenta };

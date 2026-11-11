# Análisis de código con errores intencionales

Las funciones `buggy` contienen defectos **a propósito** para entrenar la detección de fallos. Las funciones `fixed` representan una posible corrección. Los tests verifican ambos comportamientos y deberían terminar sin errores: comprueban que el bug exista en el ejemplo y que la solución lo evite.

- JS: `node javascript/tests.js`
- C#: `dotnet run --project csharp/QAExamples.csproj`

Reglas del ejercicio: cantidad positiva, precio no negativo, stock no negativo, cantidad no mayor al stock; importe = precio × cantidad.

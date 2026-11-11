using System;

// Ejercicio educativo: BUGS intencionales en la versión defectuosa.
static class VentaBuggy
{
    public static decimal Calcular(decimal precio, int cantidad, int stock)
    {
        if (cantidad >= stock) throw new InvalidOperationException("Stock insuficiente");
        return precio + cantidad; // Error: debe multiplicar
    }
}

static class VentaFixed
{
    public static (decimal Total, int StockFinal) Calcular(decimal precio, int cantidad, int stock)
    {
        if (precio < 0 || cantidad <= 0 || stock < 0) throw new ArgumentException("Datos inválidos");
        if (cantidad > stock) throw new InvalidOperationException("Stock insuficiente");
        return (precio * cantidad, stock - cantidad);
    }
}

static class Program
{
    static void Check(bool ok, string message)
    {
        if (!ok) throw new Exception("FALLO: " + message);
    }
    static void Main()
    {
        Check(VentaBuggy.Calcular(25, 4, 10) != 100, "Bug de cálculo detectable");
        bool rejectedBoundary = false;
        try { VentaBuggy.Calcular(25, 10, 10); }
        catch (InvalidOperationException) { rejectedBoundary = true; }
        Check(rejectedBoundary, "Bug de límite detectable");
        var ok = VentaFixed.Calcular(25, 4, 10);
        Check(ok.Total == 100 && ok.StockFinal == 6, "Venta válida");
        var boundary = VentaFixed.Calcular(25, 10, 10);
        Check(boundary.Total == 250 && boundary.StockFinal == 0, "Límite exacto");
        bool rejectedInvalid = false;
        try { VentaFixed.Calcular(25, -2, 10); }
        catch (ArgumentException) { rejectedInvalid = true; }
        Check(rejectedInvalid, "Cantidad negativa rechazada");
        Console.WriteLine("OK: defectos demostrados y correcciones verificadas (C#).");
    }
}

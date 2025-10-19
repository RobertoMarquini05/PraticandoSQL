-- Consulta para calcular a média salarial de cada departamento utilizando subconsultas
SELECT 
    d.NomeDepartamento,
    (SELECT AVG(s.Salario)
     FROM Colaboradores s
     WHERE s.id_departamento = d.id_departamento) AS MediaSalarial
FROM Departamentos d;

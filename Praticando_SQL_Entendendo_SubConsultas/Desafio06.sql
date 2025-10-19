-- Consulta para identificar o maior salário em cada departamento
SELECT 
    d.NomeDepartamento,
    MAX(c.Salario) AS MaiorSalario
FROM 
    Colaboradores c
JOIN 
    Departamentos d ON c.IdDepartamento = d.IdDepartamento
GROUP BY 
    d.NomeDepartamento;

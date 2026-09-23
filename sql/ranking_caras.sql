
-- Top 10 municípios com gasolina mais cara
SELECT
"Municipio",
"Estado - Sigla",
AVG ("Valor de Venda") as preco_medio
FROM precos_combustiveis
WHERE "Produto" = 'GASOLINA'
GROUP BY "Municipio", "Estado - Sigla"
ORDER BY preco_medio DESC
LIMIT 10


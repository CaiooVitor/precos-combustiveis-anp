SELECT 
    "Estado - Sigla",
    "Produto",
    AVG("Valor de Venda") as preco_medio
FROM precos_combustiveis
GROUP BY "Estado - Sigla", "Produto"
ORDER BY "Estado - Sigla", preco_medio DESC ;
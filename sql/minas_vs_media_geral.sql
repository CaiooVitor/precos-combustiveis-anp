SELECT 
    CASE 
        WHEN "Estado - Sigla" = 'MG' THEN 'Minas Gerais'
        ELSE 'Resto do Brasil'
    END AS grupo,
    "Produto",
    AVG("Valor de Venda") AS preco_medio
FROM precos_combustiveis
GROUP BY grupo, "Produto"
ORDER BY "Produto", grupo;
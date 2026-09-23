SELECT
    strftime('%Y-%m', "Data da Coleta") as ano_mes,
    AVG("Valor de Venda") as preco_medio
FROM precos_combustiveis
WHERE "Produto" = 'GASOLINA'
GROUP BY ano_mes
ORDER BY ano_mes;
SELECT 
    ano_mes,
    preco_medio,
    LAG(preco_medio) OVER (ORDER BY ano_mes) AS preco_mes_anterior,
    ROUND(
        (preco_medio - LAG(preco_medio) OVER (ORDER BY ano_mes)) 
        / LAG(preco_medio) OVER (ORDER BY ano_mes) * 100, 2
    ) AS variacao_percentual
FROM (
    SELECT 
        strftime('%Y-%m', "Data da Coleta") AS ano_mes,
        AVG("Valor de Venda") AS preco_medio
    FROM precos_combustiveis
    WHERE "Produto" = 'GASOLINA'
    GROUP BY ano_mes
) AS subquery
ORDER BY ano_mes;
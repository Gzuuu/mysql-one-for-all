SELECT MIN(assinatura_valor) AS "faturamento_minimo",
MAX(assinatura_valor) AS "faturamento_maximo",
ROUND(AVG(assinatura_valor),2) AS "faturamento_medio",
SUM(assinatura_valor) AS "faturamento_total" FROM SpotifyClone.planos AS P
INNER JOIN SpotifyClone.usuario AS U
ON U.plano_id = P.assinatura_id;
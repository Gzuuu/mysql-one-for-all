SELECT M.titulo AS cancao, COUNT(H.cancoes_id) AS reproducoes FROM SpotifyClone.cancoes AS M
INNER JOIN SpotifyClone.historico AS H
ON H.cancoes_id = M.cancoes_id
GROUP BY H.cancoes_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
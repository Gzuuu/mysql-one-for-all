SELECT P.usuario_nome AS pessoa_usuaria, count(M.usuario_id) AS musicas_ouvidas, round(SUM(C.duracao) / 60, 2) AS total_minutos FROM SpotifyClone.usuario AS P
INNER JOIN SpotifyClone.historico AS M
ON M.usuario_id = P.usuario_id
INNER JOIN SpotifyClone.cancoes AS C
ON C.cancoes_id = M.cancoes_id
GROUP BY M.usuario_id
ORDER BY P.usuario_nome;
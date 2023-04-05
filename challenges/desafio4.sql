SELECT P.usuario_nome AS "pessoa_usuaria", 
(CASE
	WHEN MAX(YEAR(H.data_reproducao)) >= 2021 THEN 'Ativa'
    ELSE 'Inativa'
END) AS "status_pessoa_usuaria" FROM SpotifyClone.usuario AS P
INNER JOIN SpotifyClone.historico AS H
ON H.usuario_id = P.usuario_id
GROUP BY P.usuario_nome
ORDER BY P.usuario_nome;
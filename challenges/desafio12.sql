SELECT A.artista_nome AS "artista",
(CASE
	WHEN COUNT(F.cancoes_id) >= 5 THEN "A"
    WHEN COUNT(F.cancoes_id) >=3 AND COUNT(F.cancoes_id) < 5 THEN "B"
    WHEN COUNT(F.cancoes_id) >=1 AND COUNT(F.cancoes_id) < 3 THEN "C"
    ELSE "-"
END) AS "ranking" FROM SpotifyClone.artista AS A
INNER JOIN SpotifyClone.albuns AS AL
ON AL.artista_id = A.artista_id
LEFT JOIN SpotifyClone.cancoes AS M
ON M.album_id = AL.album_id
LEFT JOIN SpotifyClone.musicas_favoritas AS F
ON M.cancoes_id = F.cancoes_id
GROUP BY A.artista_nome
ORDER BY COUNT(F.cancoes_id) DESC, artista;
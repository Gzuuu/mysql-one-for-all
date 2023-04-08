SELECT A.album_nome AS "album", COUNT(F.cancoes_id) AS "favoritadas" FROM SpotifyClone.albuns AS A
INNER JOIN SpotifyClone.cancoes AS M
ON M.album_id = A.album_id
INNER JOIN SpotifyClone.musicas_favoritas AS F
ON F.cancoes_id = M.cancoes_id
GROUP BY A.album_nome
ORDER BY favoritadas DESC, album
LIMIT 3;
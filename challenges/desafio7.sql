SELECT M.artista_nome as "artista", A.album_nome as "album", COUNT(S.artista_id) AS "pessoas_seguidoras" FROM SpotifyClone.artista AS M
INNER JOIN SpotifyClone.albuns AS A
ON A.artista_id = M.artista_id
INNER JOIN SpotifyClone.seguidores AS S
ON S.artista_id = M.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;
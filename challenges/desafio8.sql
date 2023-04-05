SELECT M.artista_nome AS "artista", A.album_nome AS "album" FROM SpotifyClone.artista AS M
INNER JOIN SpotifyClone.albuns AS A
ON A.artista_id = M.artista_id
WHERE M.artista_nome = "Elis Regina"
ORDER BY album;
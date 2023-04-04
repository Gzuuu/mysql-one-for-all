SELECT ( SELECT count(*) FROM SpotifyClone.cancoes) AS cancoes, ( SELECT count(*) from SpotifyClone.artista ) AS artistas, (SELECT count(*) FROM SpotifyClone.albuns) AS albuns;

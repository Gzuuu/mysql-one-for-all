SELECT
  (CASE
    WHEN U.usuario_idade <= 30 THEN 'Até 30 anos'
    WHEN U.usuario_idade > 30 AND U.usuario_idade <= 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
  END) AS "faixa_etaria",
  COUNT(DISTINCT U.usuario_id) AS total_pessoas_usuarias,
  COUNT(F.cancoes_id) AS total_favoritadas
FROM
  SpotifyClone.usuario AS U
  LEFT JOIN SpotifyClone.musicas_favoritas AS F
  ON U.usuario_id = F.usuario_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;
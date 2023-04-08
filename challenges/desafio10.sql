CREATE TABLE SpotifyClone.musicas_favoritas (
    usuario_id INT NOT NULL,
    cancoes_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, cancoes_id),
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id),
    FOREIGN KEY (cancoes_id) REFERENCES SpotifyClone.cancoes(cancoes_id)
);

INSERT INTO SpotifyClone.musicas_favoritas (usuario_id, cancoes_id)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 4),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);
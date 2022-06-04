SELECT COUNT(DISTINCT c.cancao) AS cancoes, COUNT(DISTINCT al.album) AS albuns, COUNT(DISTINCT a.artista) AS artistas
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.album as al ON c.album_id = al.album_id
INNER JOIN SpotifyClone.artista as a ON al.artista_id = a.artista_id
;
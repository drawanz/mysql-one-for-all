SELECT c.cancao AS nome, COUNT(h.cancao_id) AS reproducoes FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.cancao AS c ON c.cancao_id = h.cancao_id
WHERE usuario_id = 1 OR usuario_id = 4 OR usuario_id = 5
GROUP BY c.cancao;
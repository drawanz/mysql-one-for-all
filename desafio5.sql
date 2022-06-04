SELECT 
    c.cancao AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancao AS c
        INNER JOIN
    SpotifyClone.historico AS h ON c.cancao_id = h.cancao_id
GROUP BY h.cancao_id
ORDER BY COUNT(h.cancao_id) DESC , c.cancao ASC
LIMIT 2;
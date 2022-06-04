SELECT 
    c.cancao AS nome, COUNT(h.cancao_id) AS reproducoes
FROM
    SpotifyClone.plano AS p
        INNER JOIN
    SpotifyClone.usuario AS u ON u.plano_id = p.plano_id
        INNER JOIN
    SpotifyClone.historico AS h ON h.usuario_id = u.usuario_id
        INNER JOIN
    SpotifyClone.cancao AS c ON c.cancao_id = h.cancao_id
WHERE
    plano = 'gratuito' OR plano = 'pessoal'
GROUP BY c.cancao;
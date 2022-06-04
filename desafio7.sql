SELECT 
    a.artista AS artista,
    al.album AS album,
    COUNT(af.artista_id) AS seguidores
FROM
    SpotifyClone.artista AS a
        INNER JOIN
    SpotifyClone.album AS al ON a.artista_id = al.artista_id
		INNER JOIN
	SpotifyClone.artista_favorito AS af ON a.artista_id = af.artista_id
GROUP BY a.artista, al.album ORDER BY seguidores DESC, artista ASC, album ASC;
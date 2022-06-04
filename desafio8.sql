SELECT 
    a.artista, al.album
FROM
    SpotifyClone.artista AS a
        INNER JOIN
    SpotifyClone.album AS al ON al.artista_id = 1
WHERE
    artista = 'Walter Phoenix';
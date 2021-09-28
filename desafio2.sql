use SpotifyClone;
drop view if exists SpotifyClone.estatisticas_musicais;

CREATE VIEW estatisticas_musicais AS
    SELECT 
        (SELECT 
                COUNT(*)
            FROM
                cancao) AS cancoes,
        (SELECT 
                COUNT(*)
            FROM
                artista) AS artistas,
        (SELECT 
                COUNT(*)
            FROM
                album) AS albuns;

SELECT 
    *
FROM
    estatisticas_musicais;

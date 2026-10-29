-- Esercizio 13
-- Per ogni libro, trovare il numero di prestiti ancora aperti (DataFine NULL).
-- Mostrare tutti i libri, anche quelli senza prestiti aperti, per i quali deve
-- essere indicato il valore 0: CodLibro e il conteggio, in una colonna chiamata
-- PrestitiAperti.
-- Ordinare il risultato per CodLibro (crescente).
--
-- La condizione su DataFine sta nella ON (non nella WHERE), altrimenti la
-- LEFT JOIN perderebbe i libri senza prestiti aperti.

SELECT l.CodLibro, COUNT(p.CodLibro) AS PrestitiAperti
FROM Libri l
     LEFT JOIN Prestiti p ON p.CodLibro = l.CodLibro
                         AND p.DataFine IS NULL
GROUP BY l.CodLibro
ORDER BY l.CodLibro;

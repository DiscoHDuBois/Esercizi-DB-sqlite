-- Esercizio 7
-- Trovare il nome degli utenti che hanno preso in prestito almeno un libro
-- di genere 'Romanzo'.
-- Ordinare il risultato per Nome (crescente).

SELECT DISTINCT u.Nome
FROM Utenti u
     JOIN Prestiti p ON p.CodUtente = u.CodUtente
     JOIN Libri l    ON l.CodLibro  = p.CodLibro
WHERE l.Genere = 'Romanzo'
ORDER BY u.Nome;

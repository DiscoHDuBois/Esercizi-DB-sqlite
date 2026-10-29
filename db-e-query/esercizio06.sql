-- Esercizio 6
-- Trovare il titolo dei libri attualmente in prestito (non ancora restituiti).
-- Ordinare il risultato per Titolo (crescente).

SELECT DISTINCT l.Titolo
FROM Libri l
     JOIN Prestiti p ON p.CodLibro = l.CodLibro
WHERE p.DataFine IS NULL
ORDER BY l.Titolo;

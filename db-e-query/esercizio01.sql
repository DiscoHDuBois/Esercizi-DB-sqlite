-- Esercizio 1
-- Trovare tutti gli attributi dei libri pubblicati dopo il 2000.
-- Ordinare il risultato per CodLibro (crescente).

SELECT CodLibro, Titolo, Genere, AnnoPubbl
FROM Libri
WHERE AnnoPubbl > 2000
ORDER BY CodLibro;

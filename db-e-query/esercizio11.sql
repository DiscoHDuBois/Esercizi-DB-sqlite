-- Esercizio 11
-- Trovare il CodUtente degli utenti che hanno preso in prestito tutti i libri
-- di genere 'Saggio' presenti in biblioteca.
-- Ordinare il risultato per CodUtente (crescente).
--
-- Divisione relazionale: l'utente va bene se NON ESISTE un saggio
-- che egli NON abbia preso in prestito.

SELECT u.CodUtente
FROM Utenti u
WHERE NOT EXISTS (
    SELECT *
    FROM Libri l
    WHERE l.Genere = 'Saggio'
      AND NOT EXISTS (
          SELECT *
          FROM Prestiti p
          WHERE p.CodLibro  = l.CodLibro
            AND p.CodUtente = u.CodUtente
      )
)
ORDER BY u.CodUtente;

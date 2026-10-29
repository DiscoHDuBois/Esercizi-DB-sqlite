-- Esercizio 10
-- Trovare le coppie di utenti (CodUtente1, CodUtente2) che abitano nella stessa
-- città. Includere solo le coppie con CodUtente1 < CodUtente2 per evitare
-- duplicati. Le due colonne del risultato devono chiamarsi CodUtente1 e CodUtente2.
-- Ordinare il risultato per CodUtente1 e, a parità, per CodUtente2 (crescenti).

SELECT u1.CodUtente AS CodUtente1, u2.CodUtente AS CodUtente2
FROM Utenti u1
     JOIN Utenti u2 ON u2.Citta = u1.Citta
WHERE u1.CodUtente < u2.CodUtente
ORDER BY CodUtente1, CodUtente2;

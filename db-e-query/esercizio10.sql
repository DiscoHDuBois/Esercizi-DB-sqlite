SELECT DISTINCT a.CodUtente as CodUtente1, b.CodUtente as CodUtente2
FROM Utenti a JOIN Utenti b ON a.Citta = b.Citta
WHERE CodUtente1 < CodUtente2
ORDER BY CodUtente1, CodUtente2

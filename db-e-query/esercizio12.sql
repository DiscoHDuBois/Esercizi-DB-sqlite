SELECT CodUtente, count(*) as NumPrestiti
FROM Prestiti p 
GROUP BY CodUtente
ORDER BY CodUtente
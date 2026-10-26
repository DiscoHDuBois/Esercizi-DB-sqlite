SELECT Citta, count(*) AS NumUtenti
FROM Utenti
GROUP BY Citta
HAVING count(*) >= 2
ORDER BY Citta
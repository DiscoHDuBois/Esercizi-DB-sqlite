SELECT a.Nome AS Nome
FROM Autori a
UNION
SELECT u.Nome AS Nome
FROM Utenti u 
ORDER BY Nome

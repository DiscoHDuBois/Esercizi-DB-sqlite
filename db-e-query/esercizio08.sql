-- Esercizio 8
-- Trovare il nome degli autori i cui libri sono stati presi in prestito
-- da utenti di Milano.
-- Ordinare il risultato per Nome (crescente).

SELECT DISTINCT a.Nome
FROM Autori a
     JOIN Scrittura s ON s.CodAutore = a.CodAutore
     JOIN Prestiti p  ON p.CodLibro  = s.CodLibro
     JOIN Utenti u    ON u.CodUtente = p.CodUtente
WHERE u.Citta = 'Milano'
ORDER BY a.Nome;

-- Esercizio 9
-- Trovare il nome di tutti coloro che figurano nella base di dati come autori
-- oppure come utenti (o entrambe le cose). Il risultato deve avere un unico
-- attributo chiamato Nome.
-- Ordinare il risultato per Nome (crescente).

SELECT Nome
FROM Autori
UNION
SELECT Nome
FROM Utenti
ORDER BY Nome;

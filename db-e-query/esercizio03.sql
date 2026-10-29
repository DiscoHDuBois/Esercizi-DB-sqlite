-- Esercizio 3
-- Trovare il nome e la città degli utenti che abitano a Roma.
-- Ordinare il risultato per Nome (crescente).

SELECT Nome, Citta
FROM Utenti
WHERE Citta = 'Roma'
ORDER BY Nome;

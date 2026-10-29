# Testi degli esercizi

Tutti gli esercizi usano il database [`biblioteca.db`](biblioteca.db).

## Schema

```
Libri     (CodLibro, Titolo, Genere, AnnoPubbl)
Autori    (CodAutore, Nome, Nazionalita)
Scrittura (CodLibro → Libri, CodAutore → Autori)
Utenti    (CodUtente, Nome, Citta)
Prestiti  (CodLibro → Libri, CodUtente → Utenti, DataInizio, DataFine)
```

- Chiavi di `Libri`, `Autori`, `Utenti`: il primo attributo (`Cod...`)
- Chiave di `Scrittura`: (`CodLibro`, `CodAutore`)
- Chiave di `Prestiti`: (`CodLibro`, `CodUtente`, `DataInizio`)
- `DataFine` è `NULL` finché il prestito è aperto.

---

## Esercizio 1 — [soluzione](esercizio01.sql)

Trovare tutti gli attributi dei libri pubblicati dopo il 2000.
Ordinare il risultato per CodLibro (crescente).

---

## Esercizio 2 — [soluzione](esercizio02.sql)

Trovare il titolo e il genere di tutti i libri nella biblioteca.
Ordinare il risultato per Titolo (crescente).

---

## Esercizio 3 — [soluzione](esercizio03.sql)

Trovare il nome e la città degli utenti che abitano a Roma.
Ordinare il risultato per Nome (crescente).

---

## Esercizio 4 — [soluzione](esercizio04.sql)

Trovare CodLibro, CodUtente e DataInizio di tutti i prestiti ancora aperti (DataFine non ancora registrata).
Ordinare il risultato per CodLibro e, a parità, per CodUtente (crescenti).

---

## Esercizio 5 — [soluzione](esercizio05.sql)

Trovare CodLibro, CodUtente e DataFine dei prestiti già restituiti.
Ordinare il risultato per CodLibro, poi per CodUtente, poi per DataFine (crescenti).

---

## Esercizio 6 — [soluzione](esercizio06.sql)

Trovare il titolo dei libri attualmente in prestito (non ancora restituiti).
Ordinare il risultato per Titolo (crescente).

---

## Esercizio 7 — [soluzione](esercizio07.sql)

Trovare il nome degli utenti che hanno preso in prestito almeno un libro di genere 'Romanzo'.
Ordinare il risultato per Nome (crescente).

---

## Esercizio 8 — [soluzione](esercizio08.sql)

Trovare il nome degli autori i cui libri sono stati presi in prestito da utenti di Milano.
Ordinare il risultato per Nome (crescente).

---

## Esercizio 9 — [soluzione](esercizio09.sql)

Trovare il nome di tutti coloro che figurano nella base di dati come autori oppure come utenti (o entrambe le cose). Il risultato deve avere un unico attributo chiamato Nome.
Ordinare il risultato per Nome (crescente).

---

## Esercizio 10 — [soluzione](esercizio10.sql)

Trovare le coppie di utenti (CodUtente1, CodUtente2) che abitano nella stessa città. Includere solo le coppie con CodUtente1 < CodUtente2 per evitare duplicati. Le due colonne del risultato devono chiamarsi CodUtente1 e CodUtente2.
Ordinare il risultato per CodUtente1 e, a parità, per CodUtente2 (crescenti).

---

## Esercizio 11 — [soluzione](esercizio11.sql)

Trovare il CodUtente degli utenti che hanno preso in prestito tutti i libri di genere 'Saggio' presenti in biblioteca.
Ordinare il risultato per CodUtente (crescente).

---

## Esercizio 12 — [soluzione](esercizio12.sql)

Per ogni utente, trovare il numero totale di prestiti effettuati (inclusi quelli già restituiti). Mostrare CodUtente e il conteggio, in una colonna chiamata NumPrestiti. Per semplicità, ignorare gli utenti che non hanno effettuato prestiti.
Ordinare il risultato per CodUtente (crescente).

---

## Esercizio 13 — [soluzione](esercizio13.sql)

Per ogni libro, trovare il numero di prestiti ancora aperti (DataFine NULL). Mostrare tutti i libri, anche quelli senza prestiti aperti, per i quali deve essere indicato il valore 0: CodLibro e il conteggio, in una colonna chiamata PrestitiAperti.
Ordinare il risultato per CodLibro (crescente).

---

## Esercizio 14 — [soluzione](esercizio14.sql)

Trovare il CodUtente (o i CodUtente, in caso di parità) degli utenti con il maggior numero di prestiti ancora aperti.
Ordinare il risultato per CodUtente (crescente).

---

## Esercizio 15 — [soluzione](esercizio15.sql)

Trovare il titolo del libro (o dei libri, in caso di parità) con il maggior numero di autori.
Ordinare il risultato per Titolo (crescente).

---

## Esercizio 16 — [soluzione](esercizio16.sql)

Trovare, per ogni città, il numero di utenti residenti. Mostrare solo le città con almeno due utenti: Citta e il conteggio, in una colonna chiamata NumUtenti.
Ordinare il risultato per Citta (crescente).


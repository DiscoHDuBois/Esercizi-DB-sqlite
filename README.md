# Esercizi SQL — Basi di Dati

Esercizi tratti dalle esercitazioni proposte per il corso di Basi di Dati.

```
esercizi-sql/
└── db-e-query/
    ├── biblioteca.db        database SQLite usato da tutti gli esercizi
    ├── testi-esercizi.md    schema del database e testi degli esercizi
    └── esercizioNN.sql      soluzione dell'esercizio NN (01–16)
```

Per eseguire una soluzione:

```bash
cd db-e-query
sqlite3 -header -column biblioteca.db < esercizio01.sql
```

---

## Installazione di sqlite3

### macOS (Homebrew)

sqlite3 è già preinstallato su macOS, ma per avere una versione aggiornata:

```bash
brew install sqlite
```

---

### Linux

| Distribuzione            | Comando                                       |
|--------------------------|-----------------------------------------------|
| Debian / Ubuntu          | `sudo apt update && sudo apt install sqlite3` |
| Fedora                   | `sudo dnf install sqlite`                     |
| Arch                     | `sudo pacman -S sqlite`                       |


### Verifica dell'installazione

```bash
sqlite3 --version
```

---
## Utilizzo di sqlite3 - Riga di Comando (Principali)

| Comando                                              | Descrizione                                                    |
|------------------------------------------------------|----------------------------------------------------------------|
| `sqlite3 biblioteca.db`                              | Apre il database (da terminale, nella cartella `db-e-query`)   |
| `sqlite3 -header -column biblioteca.db < file.sql`   | Esegue un file `.sql` senza entrare nella shell                |
| `.headers on`                                        | Mostra i nomi delle colonne nei risultati                      |
| `.mode column`                                       | Mostra i risultati incolonnati (più leggibili)                 |
| `.mode box`                                          | Mostra i risultati in una tabella con bordi                    |
| `.tables`                                            | Elenca le tabelle del database                                 |
| `.schema`                                            | Mostra il `CREATE TABLE` di tutte le tabelle                   |
| `.schema Libri`                                      | Mostra la struttura di una sola tabella                        |
| `.read esercizio01.sql`                              | Esegue un file `.sql` dall'interno della shell                 |
| `.nullvalue NULL`                                    | Mostra `NULL` invece di una cella vuota                        |
| `.timer on`                                          | Mostra il tempo di esecuzione delle query                      |
| `.output risultato.txt`                              | Salva i risultati in un file invece di stamparli               |
| `.output stdout`                                     | Torna a stampare i risultati a schermo                         |
| `.help`                                              | Elenca tutti i comandi della shell                             |
| `.quit`                                              | Esce da sqlite3                                                |

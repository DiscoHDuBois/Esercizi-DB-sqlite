
CREATE TABLE Libri (
    CodLibro    CHAR(3)      PRIMARY KEY,
    Titolo      VARCHAR(100) NOT NULL,
    Genere      VARCHAR(30)  NOT NULL,
    AnnoPubbl   INTEGER      NOT NULL
);

CREATE TABLE Autori (
    CodAutore   CHAR(3)      PRIMARY KEY,
    Nome        VARCHAR(60)  NOT NULL,
    Nazionalita VARCHAR(30)  NOT NULL
);

CREATE TABLE Scrittura (
    CodLibro    CHAR(3) REFERENCES Libri(CodLibro),
    CodAutore   CHAR(3) REFERENCES Autori(CodAutore),
    PRIMARY KEY (CodLibro, CodAutore)
);

CREATE TABLE Utenti (
    CodUtente   CHAR(3)      PRIMARY KEY,
    Nome        VARCHAR(60)  NOT NULL,
    Citta       VARCHAR(40)  NOT NULL
);

CREATE TABLE Prestiti (
    CodLibro    CHAR(3) REFERENCES Libri(CodLibro),
    CodUtente   CHAR(3) REFERENCES Utenti(CodUtente),
    DataInizio  DATE    NOT NULL,
    DataFine    DATE,                
    PRIMARY KEY (CodLibro, CodUtente, DataInizio)
);

INSERT INTO Libri VALUES
  ('L01', 'Il nome della rosa',   'Romanzo', 1980),
  ('L02', 'Se questo è un uomo',  'Saggio',  1947),
  ('L03', 'La coscienza di Zeno', 'Romanzo', 1923),
  ('L04', 'I sommersi e i salvati', 'Saggio', 1986),
  ('L05', 'Poesie scelte',        'Poesia',  2010),
  ('L06', 'Il barone rampante',   'Romanzo', 1957),
  ('L07', 'Racconti italiani',    'Racconti', 2005);

INSERT INTO Autori VALUES
  ('A01', 'Umberto Eco',      'Italiana'),
  ('A02', 'Primo Levi',       'Italiana'),
  ('A03', 'Italo Svevo',      'Italiana'),
  ('A04', 'Italo Calvino',    'Italiana'),
  ('A05', 'Pablo Neruda',     'Cilena'),
  ('A06', 'Eugenio Montale',  'Italiana');

INSERT INTO Scrittura VALUES
  ('L01', 'A01'),
  ('L02', 'A02'),
  ('L03', 'A03'),
  ('L04', 'A02'),
  ('L05', 'A05'),
  ('L05', 'A06'),
  ('L06', 'A04'),
  ('L07', 'A02'),
  ('L07', 'A03'),
  ('L07', 'A04');

INSERT INTO Utenti VALUES
  ('U01', 'Marco Rossi',   'Roma'),
  ('U02', 'Laura Bianchi', 'Milano'),
  ('U03', 'Sara Greco',    'Roma'),
  ('U04', 'Paolo Neri',    'Napoli'),
  ('U05', 'Anna Ferri',    'Milano'),
  ('U06', 'Luca Conti',    'Torino');

INSERT INTO Prestiti VALUES
  ('L01', 'U01', '2024-01-10', '2024-01-30'),
  ('L02', 'U01', '2024-02-01', '2024-02-20'),
  ('L04', 'U01', '2024-03-05', '2024-03-25'),
  ('L02', 'U02', '2024-01-15', '2024-02-05'),
  ('L03', 'U02', '2024-02-10', NULL),
  ('L01', 'U02', '2024-03-15', NULL),
  ('L06', 'U03', '2024-01-20', '2024-02-10'),
  ('L02', 'U03', '2024-03-01', NULL),
  ('L04', 'U04', '2024-02-15', '2024-03-01'),
  ('L01', 'U05', '2024-01-05', '2024-01-25'),
  ('L06', 'U05', '2024-03-10', NULL);


-- RISULTATI ATTESI: 
-- Es. 1   L05 Poesie scelte (2010), L07 Racconti italiani (2005)
-- Es. 2   tutti i 7 libri, con titolo e genere
-- Es. 3   Marco Rossi (Roma), Sara Greco (Roma)
-- Es. 4   L03-U02, L01-U02, L02-U03, L06-U05
-- Es. 5   L01-U01, L02-U01, L04-U01, L02-U02, L06-U03, L04-U04, L01-U05
-- Es. 6   Il nome della rosa, Se questo è un uomo,
--         La coscienza di Zeno, Il barone rampante
-- Es. 7   Marco Rossi, Laura Bianchi, Sara Greco, Anna Ferri
-- Es. 8   Umberto Eco, Primo Levi, Italo Svevo, Italo Calvino
-- Es. 9   i 6 autori e i 6 utenti (12 nomi, nessun duplicato)
-- Es. 10  (U01, U03), (U02, U05)
-- Es. 11  U01 (unico ad aver preso entrambi i saggi, L02 e L04)
-- Es. 12  U01: 3, U02: 3, U03: 2, U04: 1, U05: 2
--         (U06 non compare: non ha prestiti)
-- Es. 13  L01: 1, L02: 1, L03: 1, L04: 0, L05: 0, L06: 1, L07: 0
-- Es. 14  U02 (2 prestiti aperti)
-- Es. 15  Racconti italiani (3 autori)
-- Es. 16  Milano: 2, Roma: 2


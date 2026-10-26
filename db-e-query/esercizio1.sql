SELECT CodLibro, Titolo, Genere, AnnoPubbl
from Libri
where AnnoPubbl > '2000'
order by CodLibro
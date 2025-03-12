
-- Arquivos com as querys para de acordo com as imagens, solicitadas no projeto

--imagem 1 
SELECT Nome, Ano FROM Filmes

--imagem 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

--imagem 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE '%Futuro%';

--imagem 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano Like 1997;

--imagem 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome IN (
    'O Grande Truque',
    'Donnie Darko',
    'Quem Quer Ser um Milionário?',
    'Uma Vida sem Limites',
    'Avatar',
    'A Viagem de Chihiro'
);
-- imagem 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 ORDER BY Duracao 

--Imagem 7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--Imagem 8
Select * FROM Atores WHERE Genero LIKE 'm'

--Imagem 9
Select * FROM Atores WHERE Genero LIKE 'f' ORDER BY PrimeiroNome

--Imagem 10
SELECT Nome, Genero FROM Filmes JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--Imagem 11
SELECT Nome, Genero FROM Filmes JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero LIKE 'Mistério'

-- Imagem 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes JOIN ElencoFilme ON Filmes.Id = ElencoFilme.idFilme JOIN ATORES ON Atores.Id = ElencoFilme.IdAtor
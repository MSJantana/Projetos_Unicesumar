USE Bos_Inteligent

--SELECT TOP 10 * FROM dbo.Contabilidade
--SELECT TOP 10 * FROM dbo.CartoesPontuacao2
--SELECT * FROM modelos

--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONSULTAS DE TABELAS
/*
SELECT EntityIDBAS,OficeIDBas FROM dbo.Contabilidade
SELECT EntityIDBAS as CODOFFICE FROM dbo.Contabilidade
SELECT EntityIDBAS, OficeIDBas FROM dbo.Contabilidade
SELECT EntityIDBAS + OficeIDBas AS [COD/OFICE] FROM dbo.Contabilidade
SELECT EntityIDBAS + '-' + OficeIDBas AS [COD/OFFICE] FROM dbo.Contabilidade
SELECT Descricao + '-' + OficeID AS [NAME ID] FROM dbo.Locais
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
--FORMATAÇÃO DE DATA
/*
SELECT DataLeitura FROM dbo.Contabilidade

- Parametro 0 Identifica o Formato da Data e Hora
SELECT DISTINCT CONVERT(VARCHAR,DataLeitura,0) AS [UK DATE] FROM dbo.Contabilidade 
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-- FUNÇÃO GETDATE
SELECT GETDATE()
SELECT DataLeitura, DATEDIFF(month,DataLeitura,GETDATE()) AS IDADE FROM dbo.Contabilidade
SELECT DataLeitura,Modelo,Licenca,Jogado,Ganho, jogado - Ganho AS Retida FROM dbo.Contabilidade
SELECT DataLeitura,Modelo,Licenca,CtEleEnt,CtEleSai, CtEleEnt - CtEleSai AS Retida FROM dbo.Contabilidade
SELECT DataLeitura,Modelo,Licenca,Jogado,Ganho, CAST(ROUND(jogado - ganho,0) AS INT )AS Retida FROM dbo.Contabilidade 
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-- FUNÇÃO DISTINCT
SELECT DISTINCT DataLeitura FROM dbo.Contabilidade ORDER BY DataLeitura DESC
SELECT DISTINCT Maquina, DataInicio FROM dbo.CartoesPontuacao2 ORDER BY DataInicio DESC
SELECT TOP 10 * FROM dbo.Contabilidade FOR XML AUTO , ELEMENTS
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-- FUNÇÃO ISNULLS
SELECT Descricao,ModeloMala FROM dbo.Modelos
SELECT Descricao + ' - ' + CONVERT(VARCHAR(10),ModeloMala,103) AS [Modelo] FROM dbo.Modelos
SELECT Descricao + ' - ' + ISNULL(CONVERT(VARCHAR(10),ModeloMala,103),'')AS [Modelo] FROM dbo.Modelos
SELECT Descricao + ' - ' + CASE WHEN ModeloMala IS NULL THEN '' ELSE CONVERT(VARCHAR(10),ModeloMala,103) END AS [Modelo] FROM dbo.Modelos
SELECT Descricao + ' - ' + COALESCE(CONVERT(VARCHAR(10),ModeloMala,103),'')AS [Modelo] FROM dbo.Modelos
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-- FUNÇÃO CASE
SELECT Jogadas FROM dbo.CartoesPontuacao2
SELECT CASE WHEN Jogadas <= 10 THEN 'LOW' WHEN Jogadas <= 50 THEN 'MEDIUM' ELSE 'HIGH' END AS [RESULTADO] FROM dbo.CartoesPontuacao2
SELECT CASE Descricao WHEN 'B' THEN 'BOM' WHEN 'R' THEN 'RUIM' ELSE 'UNKNOWN' END AS 'RESULTADO' FROM dbo.Modelos
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-- FUNÇÃO WHERE
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = '10137'
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo <> '10137'
-- FUNÇÃO WHERE, OPERATOR AND
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = '10137' AND OficeIDBas = '0148'
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo <> '10137' AND OficeIDBas = '0148'
-- FUNÇÃO WHERE, OPERATOR OR
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = '10137' OR OficeIDBas = '0148'
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = '10137' OR OficeIDBas = '0148' OR EntityIDBas = '0003'
-- FUNÇÃO WHERE, OPERATOR IN
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo IN ('0003','0148','0146')
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo NOT IN ('0003','0148','0146')
SELECT * FROM dbo.Modelos WHERE modelo NOT in ('2','5')
SELECT * FROM dbo.Modelos WHERE modelo in ('2','5')
-- FUNÇÃO WHERE, OPERATOR AND, OR, <, >, =
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = '146' AND Licenca = '0607085' OR EntityIDBas = '0148'
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE (Modelo = '146' AND Licenca = '0607085') OR EntityIDBas = '0148'
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = '146' AND (Licenca = '0607085' OR EntityIDBas = '0148')
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo < 146
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = 146
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = 10137.00
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo >= 103 AND Modelo <= 106
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo > 103 AND Modelo < 106
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo BETWEEN 103 AND 106
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = 103 OR Modelo = 106
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo IN (103,106)
SELECT * FROM dbo.Contabilidade WHERE DataReset IS NULL
SELECT * FROM dbo.Contabilidade WHERE DataReset IS NOT NULL
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo, DataLeitura FROM dbo.Contabilidade WHERE DataLeitura = '2012-10-16 13:00:01.000' 
SELECT EntityIDBas,OficeIDBas,Licenca,Modelo, DataLeitura FROM dbo.Contabilidade WHERE DataLeitura <= '2012-10-16 13:00:01.000' 
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÃO WILDCARDS LIKE%
/*
SELECT * FROM dbo.Modelos WHERE Descricao LIKE 'MA%'
SELECT * FROM dbo.Modelos WHERE Descricao NOT LIKE 'M%'
SELECT * FROM dbo.Modelos WHERE Descricao LIKE N'M%'
SELECT * FROM dbo.Modelos WHERE Descricao LIKE 'TURB_'
SELECT * FROM dbo.Modelos WHERE Descricao LIKE '[T - C]%'
SELECT * FROM dbo.Modelos WHERE Descricao LIKE '[^T - C]%'
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÃO LEFT ()
/*
SELECT * FROM dbo.Modelos WHERE LEFT(Descricao,2) = 'LO'
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÃO ORDER BY
/*
SELECT MODELO,Descricao FROM dbo.Modelos ORDER BY Descricao ASC -- Ordena coluna ascendente
SELECT MODELO,Descricao FROM dbo.Modelos ORDER BY Descricao desc -- Ordena coluna ascendente
SELECT MODELO,Descricao FROM dbo.Modelos ORDER BY 2 desc -- Ordena coluna ascendente
SELECT Modelo,Descricao FROM dbo.Modelos WHERE Modelo <> '10056' ORDER BY Modelo ASC, Descricao ASC
SELECT Modelo,Descricao,ModeloMala FROM dbo.Modelos ORDER BY Modelo
SELECT Modelo,Descricao,ModeloMala FROM dbo.Modelos ORDER BY Modelo DESC
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÃO TOP,BOTTOM
/*
SELECT TOP 1 Modelo,Descricao,ModeloMala FROM dbo.Modelos ORDER BY Modelo DESC
SELECT TOP 1  WITH TIES Modelo,Descricao,ModeloMala FROM dbo.Modelos ORDER BY Modelo DESC
SELECT TOP 10 PERCENT WITH TIES * FROM dbo.Modelos ORDER BY Modelo DESC
SELECT TOP 10 PERCENT * FROM dbo.Modelos ORDER BY Modelo DESC
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SELECT: MULTIPLAS TABELAS
/*
SELECT * FROM dbo.Modelos WHERE ModeloMala IS NOT NULL
SELECT TOP 10 EntityIDBas,OficeIDBas,IP,Descricao,Licenca FROM dbo.Modelos,dbo.Contabilidade WHERE Modelo = Modelo
SELECT TOP 10 EntityIDBas,OficeIDBas,IP,Descricao,Licenca FROM dbo.Modelos,dbo.Contabilidade WHERE dbo.Contabilidade.Modelo = dbo.Modelos.Modelo
SELECT TOP 10 EntityIDBas,OficeIDBas,IP,Descricao,Licenca FROM dbo.Modelos INNER JOIN dbo.Contabilidade on dbo.Contabilidade.Modelo = dbo.Modelos.Modelo
SELECT TOP 10 EntityIDBas,OficeIDBas,IP,Descricao,Licenca FROM dbo.Modelos JOIN dbo.Contabilidade on dbo.Contabilidade.Modelo = dbo.Modelos.Modelo
SELECT TOP 10 EntityIDBas,OficeIDBas,IP,Descricao,Licenca FROM dbo.Modelos AS M INNER JOIN dbo.Contabilidade AS C on C.Modelo = M.Modelo
SELECT TOP 10 EntityIDBas,OficeIDBas,IP,Descricao,Licenca,Modelo FROM dbo.Modelos AS M INNER JOIN dbo.Contabilidade AS C on C.Modelo = M.Modelo
SELECT TOP 10 EntityIDBas,OficeIDBas,IP,M.Modelo,Descricao,Licenca FROM dbo.Modelos AS M INNER JOIN dbo.Contabilidade AS C on C.Modelo = M.Modelo
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SELECT 3 TABELAS OU MAIS TABELAS
/*
SELECT TOP 10 EntityIDBas,OficeIDBas,IP,M.Modelo,Descricao,Licenca FROM dbo.Contabilidade AS C
INNER JOIN dbo.Modelos AS M on C.Modelo = M.Modelo

SELECT TOP 10 EntityIDBas,OficeIDBas,L.Descricao [SALA],C.IP,M.Modelo,M.Descricao,Licenca,CartoesJogados FROM dbo.Contabilidade AS C
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo INNER JOIN dbo.Locais AS L ON L.EntityID = C.EntityIDBas

SELECT TOP 40 EntityIDBas,OficeIDBas,L.Descricao [SALA],C.IP,M.Modelo,M.Descricao,C.Licenca,DataPlayer,P.Cartelas FROM dbo.Contabilidade AS C
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo INNER JOIN dbo.Locais AS L ON L.EntityID = C.EntityIDBas 
INNER JOIN Cartoespontuacao2 AS P ON P.OficeID = C.OficeIDBas WHERE M.Descricao = 'FISH M' ORDER BY DataPlayer DESC

SELECT TOP 40 C.EntityIDBas,C.OficeIDBas,L.Descricao [SALA],C.IP,M.Modelo,M.Descricao,C.Licenca,DataLeitura,W.VAcumPago [Pago],P.Cartelas FROM dbo.Contabilidade AS C
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo INNER JOIN dbo.Locais AS L ON L.EntityID = C.EntityIDBas 
INNER JOIN dbo.AcumPago AS W ON W.Licenca = C.Licenca INNER JOIN Cartoespontuacao2 AS P ON P.OficeID = C.OficeIDBas
WHERE M.Descricao = 'FISH M' ORDER BY DataLeitura DESC

SELECT TOP 30 EntityIDBas,OficeIDBas,IP,M.Modelo,Descricao,Licenca FROM dbo.Contabilidade AS C
LEFT OUTER JOIN dbo.Modelos AS M on C.Modelo = M.Modelo

SELECT TOP 30 EntityIDBas,OficeIDBas,IP,M.Modelo,Descricao,Licenca FROM dbo.Contabilidade AS C
LEFT JOIN dbo.Modelos AS M on C.Modelo = M.Modelo WHERE M.Modelo IS NULL

SELECT TOP 30 EntityIDBas,OficeIDBas,IP,M.Modelo,Descricao,Licenca FROM dbo.Contabilidade AS C
RIGHT OUTER JOIN dbo.Modelos AS M on C.Modelo = M.Modelo

SELECT EntityIDBas,OficeIDBas,IP,M.Modelo,Descricao,Licenca FROM dbo.Contabilidade AS C
FULL JOIN dbo.Modelos AS M on C.Modelo = M.Modelo WHERE M.Modelo IS NULL

SELECT EntityIDBas,OficeIDBas,IP,M.Modelo,Descricao,Licenca FROM dbo.Contabilidade AS C
FULL OUTER JOIN dbo.Modelos AS M on C.Modelo = M.Modelo WHERE M.Modelo IS NULL OR Licenca IS NULL

SELECT TOP 30 EntityIdbas,Oficeidbas,Descricao,TypeBoard,Licenca,IP,Modelo FROM dbo.Contabilidade AS C
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo

SELECT TOP 30 EntityID,Oficeid,Maquina,C.Licenca,M.Descricao,M.Modelo FROM dbo.CartoesPontuacao2 AS C
INNER JOIN dbo.Contabilidade AS T ON C.EntityID = T.EntityIDBas INNER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo

SELECT TOP 30 EntityID,Oficeid,Maquina,C.Licenca,M.Descricao,M.Modelo FROM dbo.CartoesPontuacao2 AS C
INNER JOIN dbo.Contabilidade AS T ON C.EntityID = T.EntityIDBas INNER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo WHERE M.Modelo IS NULL

SELECT TOP 30 EntityID,Oficeid,Maquina,C.Licenca,M.Descricao,M.Modelo FROM dbo.CartoesPontuacao2 AS C
INNER JOIN dbo.Contabilidade AS T ON C.EntityID = T.EntityIDBas LEFT OUTER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo

SELECT TOP 30 EntityID,Oficeid,Maquina,C.Licenca,M.Descricao,M.Modelo FROM dbo.CartoesPontuacao2 AS C
INNER JOIN dbo.Contabilidade AS T ON C.EntityID = T.EntityIDBas LEFT OUTER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo WHERE M.Modelo IS NULL
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
--AGGREGATES
/*
SELECT COUNT(*) FROM dbo.Modelos
SELECT COUNT_BIG(*) FROM dbo.Modelos
SELECT COUNT_BIG(*) AS [Rercord Settings] FROM dbo.Modelos
SELECT COUNT(Descricao) FROM dbo.Modelos
SELECT COUNT(DISTINCT Descricao) FROM dbo.Modelos
SELECT COUNT(ModeloMala) FROM dbo.Modelos
SELECT COUNT(DISTINCT ModeloMala) [Modelo] FROM dbo.Modelos

SELECT MIN(Modelo) FROM dbo.Modelos
SELECT MAX(Modelo) FROM dbo.Modelos
SELECT MAX(Modelo), Descricao FROM dbo.Modelos -- Função agregada não ira funcionar o select
SELECT Modelo,Descricao FROM dbo.Modelos WHERE Modelo >= 10000
SELECT Modelo,Descricao FROM dbo.Modelos WHERE Modelo = (SELECT MAX(Modelo) FROM dbo.Modelos)

SELECT TOP 10 * FROM dbo.AcumPago
SELECT EntityidBas,OficeIdbas,Horario,Vacumpago,Licenca,Modelo FROM dbo.AcumPago ORDER BY Licenca

SELECT SUM(Vacumpago)AS [VPago] FROM dbo.AcumPago
SELECT CAST(SUM (Vacumpago) AS decimal(17,2)) AS [Vpago] FROM dbo.AcumPago
SELECT '$' + CAST(SUM(Vacumpago)AS DECIMAL(17,2)) AS [Vpago] FROM dbo.AcumPago -- Falha tem q converter para Varchar
SELECT '$' + CAST(CAST(SUM(VacumMaquina)AS DECIMAL(17,4))AS varchar) AS [Vpago] FROM dbo.AcumPago
SELECT '$' + CAST(CAST(SUM(Vacumpago)AS DECIMAL(17,4))AS varchar) AS [Vpago] FROM dbo.AcumPago

SELECT AVG(Vacumpago) AS [Vpago]FROM dbo.AcumPago
SELECT AVG(VacumMaquina) AS [Vpago]FROM dbo.AcumPago
SELECT CAST(AVG(VacumMaquina)AS DECIMAL(17,4)) AS [Vpago]FROM dbo.AcumPago

SELECT STDEV(Vacumpago) AS [Vpago]FROM dbo.AcumPago -- Desvio padrão

SELECT * FROM dbo.Locais -- Descrição
SELECT * FROM dbo.Modelos -- Descrição
SELECT TOP 10 * FROM dbo.Contabilidade -- Principal
SELECT TOP 10 * FROM dbo.CartoesPontuacao2
*/
--------------------------------------------------------------------------------------------------------------------------------------------------------------
--Select: GROUP BY
/*
SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Modelo,M.Descricao FROM dbo.Contabilidade AS C INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],COUNT(M.Modelo)[MODELO],M.Descricao FROM dbo.Contabilidade AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,COUNT(VAcumPago)[QUANTIDADE] FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao
ORDER BY M.Descricao

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,COUNT(VAcumPago)[QUANTIDADE] FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao
HAVING COUNT(VAcumPago) > 10

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,CAST(CAST(SUM(VAcumPago)AS DECIMAL(17,2))AS varchar)[Vpago] FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas WHERE C.Modelo = 40
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,CAST(CAST(SUM(VAcumPago)AS DECIMAL(17,2))AS varchar)[Vpago],CAST(CAST(SUM(VAcumMaquina)AS DECIMAL(17,2))AS varchar)[VpagoM] FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,CAST(SUM(VAcumPago)AS MONEY)/100[Vpago],CAST(SUM(VAcumMaquina)AS MONEY)/100 [VpagoM]FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,CAST(MIN(VAcumPago)AS MONEY)/100[Vpago],CAST(MIN(VAcumMaquina)AS MONEY)/100 [VpagoM]FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,CAST(MAX(VAcumPago)AS MONEY)/100[Vpago],CAST(MAX(VAcumMaquina)AS MONEY)/100 [VpagoM]FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,CAST(AVG(VAcumPago)AS MONEY)/100[Vpago],CAST(AVG(VAcumMaquina)AS MONEY)/100 [VpagoM]FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,CAST(AVG(VAcumPago)AS MONEY)/100[Vpago],CAST(Max(VAcumMaquina)AS MONEY)/100 [VpagoM]FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao
HAVING MAX(VAcumPago)<> AVG(VAcumMaquina)

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,VAcumPago,VAcumMaquina FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao,VAcumPago,VAcumMaquina
COMPUTE MAX(VAcumPago),AVG(VAcumMaquina)

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,VAcumPago,VAcumMaquina FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao,VAcumPago,VAcumMaquina
ORDER BY M.Modelo
COMPUTE MAX(VAcumPago),AVG(VAcumMaquina) BY M.Modelo
*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------
---SYSTEM FUNCTIONS

SELECT EntityIDBas,OficeIDBas,L.Descricao,M.Descricao FROM dbo.Contabilidade AS T
INNER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo
INNER JOIN dbo.Locais AS L ON L.OficeID = T.OficeIdBas
GROUP BY EntityIDBas,OficeIDBas,M.Descricao,L.Descricao
 
SELECT EntityIDBas,OficeIDBas,L.Descricao,LOWER(M.Descricao) AS [MODELO] FROM dbo.Contabilidade AS T
INNER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo
INNER JOIN dbo.Locais AS L ON L.OficeID = T.OficeIdBas
WHERE M.Descricao = 'BINGO BESTIA'
GROUP BY EntityIDBas,OficeIDBas,M.Descricao,L.Descricao

SELECT EntityIDBas,OficeIDBas,L.Descricao,UPPER(M.Descricao) AS [MODELO] FROM dbo.Contabilidade AS T
INNER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo
INNER JOIN dbo.Locais AS L ON L.OficeID = T.OficeIdBas
WHERE M.Descricao = 'BINGO BESTIA'
GROUP BY EntityIDBas,OficeIDBas,M.Descricao,L.Descricao

SELECT DISTINCT EntityIDBas,OficeIDBas,L.Descricao,Licenca,LEFT(M.Descricao,6) AS [Modelo]FROM dbo.Contabilidade AS T
INNER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo
INNER JOIN dbo.Locais AS L ON L.OficeID = T.OficeIdBas
WHERE M.Descricao LIKE 'C%' 
GROUP BY EntityIDBas,OficeIDBas,M.Descricao,L.Descricao,Licenca

SELECT DISTINCT EntityIDBas,OficeIDBas,L.Descricao,Licenca,RIGHT(M.Descricao,3) AS [Modelo]FROM dbo.Contabilidade AS T
INNER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo
INNER JOIN dbo.Locais AS L ON L.OficeID = T.OficeIdBas
WHERE M.Descricao LIKE 'C%' 
GROUP BY EntityIDBas,OficeIDBas,M.Descricao,L.Descricao,Licenca

SELECT DISTINCT EntityIDBas,OficeIDBas,L.Descricao,Licenca,CHARINDEX('BINGO BESTIA',M.Descricao,3) AS [Modelo]FROM dbo.Contabilidade AS T
INNER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo
INNER JOIN dbo.Locais AS L ON L.OficeID = T.OficeIdBas
WHERE M.Descricao = 'BINGO BESTIA' AND CHARINDEX('BINGO BESTIA', M.Descricao,1) > 0
ORDER BY M.Modelo

SELECT DISTINCT EntityIDBas,OficeIDBas,L.Descricao,Licenca,REPLACE(M.Descricao,'CALACA','CLC') AS [Modelo]FROM dbo.Contabilidade AS T
INNER JOIN dbo.Modelos AS M ON T.Modelo = M.Modelo
INNER JOIN dbo.Locais AS L ON L.OficeID = T.OficeIdBas
WHERE M.Descricao = 'CALACA' AND CHARINDEX('CALACA', M.Descricao,1) > 0
ORDER BY M.Modelo

--------------------------------------------------------------------------------------------------------------------------------------------------------------
---Função de Arredondamento
SELECT licenca,Modelo,CAST(VAcumMaquina AS decimal(17,2)) AS [Vpago],CEILING(VAcumMaquina) AS [Resultado] FROM dbo.AcumPago WHERE VAcumPago IS NOT NULL
SELECT licenca,Modelo,CAST(VAcumMaquina AS decimal(17,2)) AS [Vpago],FLOOR(VAcumMaquina) AS [Resultado] FROM dbo.AcumPago WHERE VAcumPago IS NOT NULL

SELECT licenca,Modelo,CAST(SUM(VAcumMaquina)AS MONEY)/100 [VpagoM],CEILING(VAcumMaquina)AS [Resultado]FROM AcumPago WHERE VAcumPago IS NOT NULL
GROUP BY Licenca,Modelo,VAcumMaquina

SELECT licenca,Modelo,CAST(SUM(VAcumMaquina)AS MONEY)/100 [VpagoM],FLOOR(VAcumMaquina)AS [Resultado]FROM AcumPago WHERE VAcumPago IS NOT NULL
GROUP BY Licenca,Modelo,VAcumMaquina

SELECT licenca,Modelo,CAST(SUM(VAcumMaquina)AS MONEY)/100 [VpagoM],ROUND(VAcumMaquina,5)AS [Resultado]FROM AcumPago WHERE VAcumPago IS NOT NULL
GROUP BY Licenca,Modelo,VAcumMaquina

SELECT DISTINCT HorarioPA AS [DATA],ROUND(ValorPago,2) AS [PAGO] FROM dbo.AcumHist AS A
INNER JOIN dbo.AcumHistDetalhe AS H
ON A.Grupo = H.Grupo
ORDER BY HorarioPA

SELECT HorarioPA AS [DATA],ROUND(SUM(ValorPago),2) AS [PAGO] FROM dbo.AcumHist AS A
INNER JOIN dbo.AcumHistDetalhe AS H
ON A.Grupo = H.Grupo
GROUP BY HorarioPA
ORDER BY HorarioPA

--Date Functions (Datepart)

SELECT DATEPART(yy,HorarioPA) AS [YEAR],ROUND(SUM(ValorPago),2) AS [PAGO] FROM dbo.AcumHist AS A
INNER JOIN dbo.AcumHistDetalhe AS H
ON A.Grupo = H.Grupo
GROUP BY HorarioPA

SELECT DATEPART(yy,HorarioPA) AS [YEAR],ROUND(SUM(ValorPago),2) AS [PAGO] FROM dbo.AcumHist AS A
INNER JOIN dbo.AcumHistDetalhe AS H
ON A.Grupo = H.Grupo
GROUP BY DATEPART(yy,HorarioPA)

SELECT DATEPART(qq,HorarioPA) AS [QUARTER],DATEPART(yy,HorarioPA)AS [YEAR],ROUND(SUM(ValorPago),2) AS [PAGO] FROM dbo.AcumHist AS A
INNER JOIN dbo.AcumHistDetalhe AS H
ON A.Grupo = H.Grupo
GROUP BY DATEPART(qq,HorarioPA),DATEPART(YY,HorarioPA)
ORDER BY DATEPART(qq,HorarioPA),DATEPART(YY,HorarioPA)

SET DATEFIRST 1
SELECT DATEPART(wk,HorarioPA) AS [SEMANA],DATEPART(yy,HorarioPA)AS [ANO],ROUND(SUM(ValorPago),2) AS [PAGO] FROM dbo.AcumHist AS A
INNER JOIN dbo.AcumHistDetalhe AS H
ON A.Grupo = H.Grupo
GROUP BY DATEPART(wk,HorarioPA),DATEPART(YY,HorarioPA)
ORDER BY DATEPART(wk,HorarioPA),DATEPART(YY,HorarioPA)

SELECT HorarioPA AS [HORA],DATEPART(mm,HorarioPA)AS [Month] FROM dbo.AcumHist

--Date Functions (Datename)

SELECT HorarioPA AS [HORA],DATENAME(mm,HorarioPA)AS [Month] FROM dbo.AcumHist

SELECT DISTINCT HorarioPA AS [DATA], 'CL ' + CAST(DATEPART(yy,HorarioPA)AS CHAR(4))+ ' ' + DATENAME(mm,HorarioPA)AS [Calendario] FROM dbo.AcumHist

--Date Functions (getdate)

SELECT grupo,Nacum,Descricao,HorarioPA, GETDATE() AS [HOJE] FROM dbo.AcumHist

SELECT grupo,Nacum,Descricao,CONVERT(VARCHAR,HorarioPA,103)AS [Premiação],CONVERT(VARCHAR,GETDATE(),103) AS [HOJE] FROM dbo.AcumHist

SELECT grupo,Nacum,Descricao,CONVERT(VARCHAR,HorarioPA,103)AS [Premiação],CONVERT(VARCHAR,GETDATE(),103) AS [HOJE],DATEDIFF(mm,HorarioPA,GETDATE()) AS [DIF] FROM dbo.AcumHist

SELECT grupo,Nacum,Descricao,CONVERT(VARCHAR,HorarioPA,103)AS [Premiação],CONVERT(VARCHAR,GETDATE(),103) AS [HOJE],DATEDIFF(wk,HorarioPA,GETDATE()) AS [SEMANAS],CONVERT(VARCHAR,DATEADD(mm,8,HorarioPA),103)
AS [APOSTA] FROM dbo.AcumHist

SELECT grupo,Nacum,Descricao,CONVERT(VARCHAR,HorarioPA,103)AS [Premiação],DATEDIFF(mm,HorarioPA,GETDATE()) AS [DIF],CONVERT(VARCHAR,DATEADD(yy,12,HorarioPA),103)
AS [APOSTA] FROM dbo.AcumHist WHERE DATEDIFF(yy,HorarioPA,GETDATE()) <= 4
ORDER BY DATEDIFF(yy,HorarioPA,GETDATE()) DESC

--Subqueries

SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo = '10137'
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo <> '10137'
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo IN ('10132','10137')
SELECT EntityIDBas, OficeIDBas,Licenca,Modelo FROM dbo.Contabilidade WHERE Modelo NOT IN ('10132','10137')

SELECT Modelo,Descricao FROM dbo.Modelos WHERE Descricao IN (SELECT Descricao FROM dbo.Modelos)

SELECT Modelo,Descricao FROM dbo.Modelos WHERE Descricao NOT IN (SELECT Descricao FROM dbo.Modelos)

SELECT EntityIdBas,OficeIdBas,Licenca,DataLeitura,C.Modelo,M.Descricao FROM dbo.Contabilidade AS C
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
WHERE EXISTS (SELECT Modelo FROM dbo.Modelos WHERE Modelo = '102') AND Tipo = 2

SELECT EntityIdBas,OficeIdBas,Licenca,DataLeitura,Modelo FROM dbo.Contabilidade 
WHERE EXISTS (SELECT Modelo FROM dbo.Modelos WHERE Modelo = '102') AND Tipo = 2

SELECT AVG(ValorPago) FROM dbo.AcumHist 
GROUP BY HorarioRP 
ORDER BY AVG(ValorPago) ASC

SELECT NAcum,IP_Servidor_PA,Descricao,ValorPago FROM dbo.AcumHist 
WHERE ValorPago > ANY (SELECT AVG(ValorPago) FROM dbo.AcumHist GROUP BY HorarioRP) AND dbo.AcumHist.Grupo = 1
ORDER BY dbo.AcumHist.NAcum ASC

SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,C.Licenca,CAST(AVG(VAcumPago)AS MONEY)/100[Vpago],CAST(AVG(VAcumMaquina)AS MONEY)/100 [VpagoM] FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
--WHERE M.Descricao = 'LUCKY H' OR Licenca = '0106180' or Licenca = '0106075'
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao,C.Licenca

CREATE VIEW MyView as
SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,C.Licenca,CAST(AVG(VAcumPago)AS MONEY)/100[Vpago],CAST(AVG(VAcumMaquina)AS MONEY)/100 [VpagoM] FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
WHERE M.Descricao = 'CALACA' OR Licenca = '0106075'
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao,C.Licenca

ALTER VIEW MyView as
SELECT EntityIDBas,OficeIDBas,L.Descricao[SALA],M.Descricao,C.Licenca,CAST(AVG(VAcumPago)AS MONEY)/100[Vpago],CAST(AVG(VAcumMaquina)AS MONEY)/100 [VpagoM] FROM dbo.AcumPago AS C 
INNER JOIN dbo.Modelos AS M ON C.Modelo = M.Modelo 
INNER JOIN dbo.Locais AS L ON L.OficeID = C.OficeIdBas 
WHERE M.Descricao = 'CALACA' OR Licenca = '0106075'
GROUP BY EntityIDBas,OficeIDBas,L.Descricao,M.Modelo,M.Descricao,C.Licenca

SELECT * from MyView

--------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM dbo.AcumHist
SELECT * FROM dbo.AcumHistDetalhe
SELECT * FROM dbo.Modelos WHERE Descricao = 'CALACA'

SELECT * FROM dbo.Contabilidade WHERE Modelo = 115 AND Tipo = 2

SELECT DISTINCT Maquina, DataInicio FROM dbo.CartoesPontuacao2 ORDER BY DataInicio DESC
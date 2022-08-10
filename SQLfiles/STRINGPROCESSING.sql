		---- ASCII AND CHAR

--SELECT ASCII('A') --65
--SELECT ASCII ('X')--88

--SELECT CHAR (65) --A
--SELECT CHAR (88) --X

--SELECT CHAR (ASCII('A')+ASCII('B'))

		-- SUBSTRING

--SELECT SUBSTRING ('HELLO WORLD',7,5)

--SELECT * FROM USERS WHERE USERNAME_ LIKE 'O%' -- FIRST LETTER IS O
--SELECT * FROM USERS WHERE SUBSTRING (USERNAME_,1,1)='O'
--SELECT * FROM USERS WHERE USERNAME_ LIKE '%O' -- LAST LETTER IS O
--SELECT * FROM USERS WHERE SUBSTRING (USERNAME_,LEN(USERNAME_),1)='O'

		----- CHARINDEX
--SELECT CHARINDEX('W', 'HELLO WORLD',0)

		---- CONCAT

--SELECT 'HELLO'+' '+'WORLD'
--SELECT CONCAT('HELLO',' ','WORLD')
--SELECT CONCAT_WS(' ', 'HELLO','WORLD')

		----FORMAT

--SELECT FORMAT (GETDATE(),'d','en-us')
--SELECT FORMAT (GETDATE(),'D','en-us')
--SELECT FORMAT (GETDATE(),'D','tr-tr')

		--LEFT, RIGHT, LEN

--SELECT LEFT ('HELLO WORLD',5)
--SELECT RIGHT('HELLO WORLD',5)
--SELECT LEN('12345')
--SELECT LEFT(('HELLO WORLD'),CHARINDEX(' ', 'HELLO WORLD'))

--SELECT 
--LEFT(NAMESURNAME,CHARINDEX(' ', NAMESURNAME)),RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME))
--FROM USERS

		--- TRIM, LTRIM, RTRIM

--SELECT TRIM('  HELLO WORLD  ')
--SELECT LTRIM('  HELLO WORLD  ')
--SELECT RTRIM('  HELLO WORLD  ')
			---- LOWER, UPPER, REVERSE, REPLICATE

--SELECT LOWER ('HELLO WORLD')
--SELECT UPPER ('hello world')
--SELECT REVERSE ('HELLO WORLD')
--SELECT REPLICATE ('12',5)


		--- REPLACE
--SELECT REPLACE('Hello word','word','World')

		---DECLARE
-- TO DEFINE A VARIABLE
DECLARE @PRAGRAPH AS VARCHAR(MAX)
SET @PRAGRAPH='Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least 
five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a 
paragraph. A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance
do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph
can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, 
we will refer to this as the “controlling idea,” because it controls what happens in the rest of the paragraph.'

--SELECT @PRAGRAPH
--SELECT REPLACE (@PRAGRAPH,'is','IS')
DECLARE @WORD AS VARCHAR(100)
SET @WORD='is' --INPUT YOUR WORD HERE
DECLARE @LEN1 AS INT
SET @LEN1=(SELECT LEN(@PRAGRAPH))
SELECT @PRAGRAPH=REPLACE(@PRAGRAPH,@WORD,'')
DECLARE @LEN2 AS INT
SET @LEN2=(SELECT LEN(@PRAGRAPH))

SELECT (@LEN1-@LEN2)/LEN(@WORD)  --HOW MANY TIMES 'is' PASS IN THIS PRAGRAPH

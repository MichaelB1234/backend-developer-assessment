USE [AppsureTest]
GO
-- The @position variable holds the position of the character currently  
-- being processed. The @nstring and @nstring2 are the Unicode character    
-- strings to process. The @astring and @astring2 are going to be the resultant 
-- unicode strings after conversion we want
DECLARE @position int, @nstring nvarchar(500), @astring nvarchar(500)
, @nstring2 nvarchar(500), @astring2 nvarchar(500);  
-- Initialize the current position variable to the first character in   
-- the string.  
SET @position = 1;  
-- Initialize the character string variable to the string to process.   
-- Notice that there is an N before the start of the string, which   
-- indicates that the data following the N is Unicode data.  
SET @nstring = N'Metalica,메탈리카';
SET @nstring2 = N'ランシド';  
-- Calculate the actual Unicode character we are processing
WHILE @position <= DATALENGTH(@nstring)  
-- While these are still characters in the character string,  
   BEGIN; 
   Set @astring = Concat(@astring,(
   SELECT    
      (SUBSTRING(@nstring, @position, 1))  
      ));  
   SELECT @position = @position + 1;  
   END;
   Set @position = 1;
   WHILE @position <= DATALENGTH(@nstring2)  
-- While these are still characters in the character string,  
   BEGIN; 
   Set @astring2 = Concat(@astring2  , (
   SELECT    
      (SUBSTRING(@nstring2, @position, 1))  
      ));
   SELECT @position = @position + 1;  
   END;    
INSERT INTO [dbo].[Artists]
           Values
           ('Metallica',
           '65f4f0c5-ef9e-490c-aee3-909e7ae6b2ab', 
           'US',
		   @astring),
		   ('Lady Gaga',
		   '650e7db6-b795-4eb5-a702-5ea2fc46c848',
		   'US',
		   'Lady Ga Ga,Stefani Joanne Angelina Germanotta'),
		   ('Mumford & Sons',
		   'c44e9c22-ef82-4a77-9bcd-af6c958446d6',
		   'GB',
		   null),
		   ('Mott the Hoople',
		   '435f1441-0f43-479d-92db-a506449a686b',
		   'GB',
		   'Mott The Hoppie,Mott The Hopple'
		   ),
		   ('Megadeth',
		   'a9044915-8be3-4c7e-b11f-9e2d2ea0a91e',
		   'US',
		   'Megadeath'),
		   ('John Coltrane',
		   'b625448e-bf4a-41c3-a421-72ad46cdb831',
		   'US',
		   'John Coltraine,John William Coltrane'),
		   ('Mogwai',
		   'd700b3f5-45af-4d02-95ed-57d301bda93e',
		   'GB',
		   'Mogwa'),
		   ('John Mayer',
		   '144ef525-85e9-40c3-8335-02c32d0861f3',
		   'US',
		   null),
		   ('Johnny Cash',
		   '18fa2fd5-3ef2-4496-ba9f-6dae655b2a4f',
		   'US',
		   'Johhny Cash,Jonny Cash'),
		   ('Jack Johnson',
		   '6456a893-c1e9-4e3d-86f7-0008b0a3ac8a',
		   'US',
		   'Jack Hody Johnson'),
		   ('John Frusciante',
		   'f1571db1-c672-4a54-a2cf-aaa329f26f0b',
		   'US',
		   'John Anthony Frusciante'),
		   ('Elton John',
		   'b83bc61f-8451-4a5d-8b8e-7e9ed295e822',
		   'GB',
		   'E. John, Elthon John,Elton Jphn,John Elton, Reginald Kenneth Dwight'),
		   ('Rancid',
		   '24f8d8a5-269b-475c-a1cb-792990b0b2ee',
		   'US',
		   @astring2),
		   ('Transplants',
		   '29f3e1bf-aec1-4d0a-9ef3-0cb95e8a3699',
		   'US',
		   'The Transplants'),
		   ('Operation Ivy',
		   '931e1d1f-6b2f-4ff8-9f70-aa537210cd46',
		   'US',
		   'Op Ivy')
GO



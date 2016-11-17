declare @count int

select @count = count(*) from [Sherpa].[dbo].[Country] where CountryId=238 and Name='Other Not Shown'

IF (@count = 1)
BEGIN

	DELETE FROM [dbo].[Country]
		  WHERE CountryId in (73,151,238)

	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Åland Islands')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Caribbean Netherlands')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Curaçao')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Guernsey')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Isle of Man')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Jersey')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Palestinian Territory, Occupied')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Saint Barthélemy')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Saint-Martin (France)')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Saint-Martin (Pays-Bas)')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Serbia')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('South Georgia and the South Sandwich Islands')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('South Sudan')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('United States Minor Outlying Islands')
	INSERT INTO [dbo].[Country] ([Name]) VALUES ('Montenegro')

	UPDATE [dbo].[Country] SET [Name] = 'Antigua and Barbuda' WHERE CountryId=9
	UPDATE [dbo].[Country] SET [Name] = 'Bosnia and Herzegovina' WHERE CountryId=27
	UPDATE [dbo].[Country] SET [Name] = 'Côte d''Ivoire' WHERE CountryId=52
	UPDATE [dbo].[Country] SET [Name] = 'Timor-Leste' WHERE CountryId=61
	UPDATE [dbo].[Country] SET [Name] = 'Heard and McDonald Islands' WHERE CountryId=94
	UPDATE [dbo].[Country] SET [Name] = 'Lao People''s Democratic Republic' WHERE CountryId=116
	UPDATE [dbo].[Country] SET [Name] = 'Libya' WHERE CountryId=121
	UPDATE [dbo].[Country] SET [Name] = 'Micronesia, Federated States of' WHERE CountryId=139
	UPDATE [dbo].[Country] SET [Name] = 'Netherlands, The' WHERE CountryId=150
	UPDATE [dbo].[Country] SET [Name] = 'North Korea' WHERE CountryId=112
	UPDATE [dbo].[Country] SET [Name] = 'Pitcairn Islands' WHERE CountryId=169
	UPDATE [dbo].[Country] SET [Name] = 'Réunion' WHERE CountryId=174
	UPDATE [dbo].[Country] SET [Name] = 'Saint Kitts and Nevis' WHERE CountryId=178
	UPDATE [dbo].[Country] SET [Name] = 'Saint Vincent and the Grenadines' WHERE CountryId=180
	UPDATE [dbo].[Country] SET [Name] = 'São Tomé and Príncipe' WHERE CountryId=183
	UPDATE [dbo].[Country] SET [Name] = 'Slovakia (Slovak Republic)' WHERE CountryId=189
	UPDATE [dbo].[Country] SET [Name] = 'Saint Helena' WHERE CountryId=197
	UPDATE [dbo].[Country] SET [Name] = 'St. Pierre and Miquelon' WHERE CountryId=198
	UPDATE [dbo].[Country] SET [Name] = 'Svalbard and Jan Mayen Islands' WHERE CountryId=201
	UPDATE [dbo].[Country] SET [Name] = 'Syria' WHERE CountryId=205
	UPDATE [dbo].[Country] SET [Name] = 'Trinidad and Tobago' WHERE CountryId=213
	UPDATE [dbo].[Country] SET [Name] = 'Turks and Caicos Islands' WHERE CountryId=217
	UPDATE [dbo].[Country] SET [Name] = 'Vatican' WHERE CountryId=227
	UPDATE [dbo].[Country] SET [Name] = 'Vietnam' WHERE CountryId=229
	UPDATE [dbo].[Country] SET [Name] = 'Wallis and Futuna Islands' WHERE CountryId=232
	UPDATE [dbo].[Country] SET [Name] = 'Congo, Democratic Republic of' WHERE CountryId=235

END
GO

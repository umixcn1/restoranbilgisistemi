CREATE PROCEDURE [dbo].sp_rezervekle
	@kisiID nvarchar(50),
	@kisiSayisi int,
	@tarihsaat nvarchar(50),
	@masaTercihi nvarchar(50)

AS
	INSERT INTO tblRezervasyon VALUES(@kisiID,@tarihsaat,@masaTercihi,@kisiSayisi)
RETURN 1

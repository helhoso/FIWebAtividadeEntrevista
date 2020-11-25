﻿/*
	20/11/2020
	Hélio Barbosa
*/
CREATE PROC FI_SP_IncBeneficiariosV2
    @NOME          VARCHAR (50) ,
    @CPF           VARCHAR (14)  ,
    @IDCLIENTE    BIGINT 
AS
BEGIN
    IF (SELECT COUNT(*) FROM BENEFICIARIOS WHERE CPF=@CPF ) <= 0 
	INSERT INTO BENEFICIARIOS (NOME, CPF, IDCLIENTE) 
	VALUES (@NOME, @CPF, @IDCLIENTE)

	SELECT SCOPE_IDENTITY()
END
CREATE PROCEDURE prcGetContractById (
	pId		int
)
BEGIN
	select * from t_contracts where contractId = pId;
END

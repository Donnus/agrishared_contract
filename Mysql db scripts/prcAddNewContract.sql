CREATE PROCEDURE prcAddNewContract (
	pBuyer			varchar(150),
    pProducer		varchar(150),
    pMainPrice		double,
    pOffPrice		double,
    pDuration		varchar(20),
    pStartDate		date,
    pEndDate		date,
    pBuyerSign		varchar(150),
    pProducerSign	varchar(150),
    pDateSigned		date
)
BEGIN
	INSERT INTO `agrishared_contracts`.`t_contracts`
	(`buyerFullName`,
	`producerFullName`,
	`agreedMainSeasonPrice`,
	`agreedOffSeasonPrice`,
	`contractDuration`,
	`contractStartDate`,
	`contractEndDate`,
	`buyerSignature`,
	`producerSignature`,
	`DateSigned`)
	VALUES
	(pBuyer,
	pProducer,
	pMainPrice,
	pOffPrice,
	pDuration,
	pStartDate,
	pEndDate,
	pBuyerSign,
	pProducerSign,
	pDateSigned);

END

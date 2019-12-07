CREATE DATABASE `agrishared_contracts` /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE TABLE `t_contracts` (
  `contractId` int(11) NOT NULL AUTO_INCREMENT,
  `buyerFullName` varchar(150) DEFAULT NULL,
  `producerFullName` varchar(150) DEFAULT NULL,
  `agreedMainSeasonPrice` double DEFAULT NULL,
  `agreedOffSeasonPrice` double DEFAULT NULL,
  `contractDuration` varchar(20) DEFAULT NULL,
  `contractStartDate` date DEFAULT NULL,
  `contractEndDate` date DEFAULT NULL,
  `buyerSignature` varchar(150) DEFAULT NULL,
  `producerSignature` varchar(150) DEFAULT NULL,
  `DateSigned` date DEFAULT NULL,
  PRIMARY KEY (`contractId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
('Coudjo Ntsugah',
'Jonas Yeboah',
5.00,
6.00,
'2 Years',
'2020-01-01',
'2022-01-01',
'Coudjo Ntsugah',
'Jonas Yeboah',
'2019-12-07');

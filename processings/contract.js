const express = require('express');
const bodyParser = require('body-parser');
const dbconn = require('./dbconnection.js');

const app = express();

app.use(bodyParser.json());

//--------------- Saving New Contract --------------------

app.route("/api/newcontract").post((req,res) => {
        const r = req.body;
        dbconn.query("call prcAddNewContract(?,?,?,?,?,?,?,?,?,?)",[r.buyerFullName, r.producerFullName, 
            r.agreedMainSeasonPrice, r.agreedOffSeasonPrice,r.contractDuration, r.contractStartDate, r.contractEndDate,
            r.buyerSignature, r.producerSignature, r.DateSigned], (err,results) => {
            if(err) return res.status(500).send(err);
            return res.status(200).send({"Msg": "Contract Saved Successfuly!"});
        })
})

//--------------- Get contract by Id ----------------------

app.route("/api/getcontractbyid/:id").get((req,res) => {
    const contractId = req.params['id'];
    dbconn.query("call prcGetContractById(?)",[contractId], 
    (err,results) => {
        if(err) return res.status(500).send(err);
        return res.status(200).send(results[0]);
    })
})

module.exports = app;
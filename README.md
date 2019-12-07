# Agrishared Buyer and Producer Contract Agreement Api
Set up
1. Run the db scripts found in the "Mysql db scripts" folder to create the Database and the table.

<b>Add New Contract Request</b>
<p>Request url: <code>localhost:8000/api/newcontract</code></p>
<p>request payload: </p>
<pre><code>{
    "buyerFullName": "John Doe",
    "producerFullName": "Michael Smith",
    "agreedMainSeasonPrice": 10.00,
    "agreedOffSeasonPrice": 12.00,
    "contractDuration": "1 Year",
    "contractStartDate": "2020-01-01",
    "contractEndDate": "2021-01-01",
    "buyerSignature": "John Doe",
    "producerSignature": "Michael Smith",
    "DateSigned": "2019-12-07"
}</code></pre>
<p>response:</p>
<pre><code>{
    "Msg": "Contract Saved Successfuly!"
}</code></pre>

<p><b>Get an Existing contract details</b></p>
<p>request url: <code>localhost:8000/api/getcontractbyid/"Enter Contract Id here"</code></p>
<p>example: <code>localhost:8000/api/getcontractbyid/1</code></p>
<p>reponse:</p>
<pre><code>[
    {
        "contractId": 1,
        "buyerFullName": "Coudjo Ntsugah",
        "producerFullName": "Jonas Yeboah",
        "agreedMainSeasonPrice": 5,
        "agreedOffSeasonPrice": 6,
        "contractDuration": "2 Years",
        "contractStartDate": "2020-01-01T00:00:00.000Z",
        "contractEndDate": "2022-01-01T00:00:00.000Z",
        "buyerSignature": "Coudjo Ntsugah",
        "producerSignature": "Jonas Yeboah",
        "DateSigned": "2019-12-07T00:00:00.000Z"
    }
]</code></pre>

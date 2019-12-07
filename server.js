const express = require('express');
const app = express();
const cors = require('cors');
const contract = require('./processings/contract.js');

app.use(cors());
app.use(contract);


const port = process.env.PORT || 8000;

app.listen(port, () => {
  console.log(`Server started on port ${port} `)
})

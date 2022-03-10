const express = require('express');
const cors = require('cors');
const PORT = process.env.PORT || 3030


const app = express();
app.use(cors());

// need a route 
app.get('/test', (req, res) => {
    res.send('docker is coolio 🤖🐳!')
})

//need a docker file and a docker ignore
//need to name the file exactly like that, same with the ignore file

app.listen(PORT, () => {
    console.log(`listening on port ${PORT}...`)
});
const express = require('express');
const cors = require('cors');


const app = express();
app.use(cors());

// need a route 
app.get('/test', (req, res) => {
    res.send('docker is cool 🤖🐳!')
})

app.listen(3030, () => {
    console.log('listening on port 3030...')
});
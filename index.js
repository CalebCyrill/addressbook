const express = require('express');
const app = express();
const logger = require('morgan')
app.use(logger("dev"));
app.use(express.static('public'));

//app.set('view engine', 'ejs');

app.get('/', (req, res) => {
    res.send("This is the homepage")
})

const PORT = process.env.PORT || 3000
app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));
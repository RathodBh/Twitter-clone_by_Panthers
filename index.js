const express = require('express')

app = express();
app.use(express.static(__dirname + '/assets'))
app.get('/',(req,resp)=>{
    resp.render('register')
    // resp.render('second')
})

app.get('/next',(req,resp)=>{
    resp.render('second')
})
app.set("view engine",'ejs  ')

app.listen(5000)
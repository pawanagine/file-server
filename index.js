var express = require('express')
var app = express()
const fs = require('fs')

app.get('/greet', function (req, res) {
  res.sendFile('/files/index.html')
})

app.get('/beats', function (req, res) {
  if (!fs.existsSync('/files/index.html')) {
    return res.status(500).end('Server resources not exist')  
  }
  res.end('running')
})

app.listen(3000, '0.0.0.0', function () {
  console.log('Listening on port 3000')
})

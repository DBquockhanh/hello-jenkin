const express = require('express')
const app = express()
const port = 8010

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port,'0.0.0.0', () => {
  console.log(`Example app lisssstening on port ${port}`)
})
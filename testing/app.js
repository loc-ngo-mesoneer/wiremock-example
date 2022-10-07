const express = require('express')
const app = express()
const port = 3000

app.post('/callback', (req, res) => {
  const message = `Hello World From Callback ${Date.now().toLocaleString()}`
  console.log(message)
  res.send({result: message})
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
const express = require('express');
const fetch = require('node-fetch');
const app = express();
const handlebars = require('express-handlebars');
const htts = require('https');
const { json } = require('express');
const port = 9129;

app.use('/assets', express.static(`${__dirname}/assets/`));
app.use('/langs', express.static(`${__dirname}/langs/`));

app.engine(
  'handlebars',
  handlebars({defaultLayout: ''})
)

app.set('views', './template')
app.set('view engine', 'handlebars')
app.get('/', async (req, res) => {
 var priceRes = await fetch('https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=USD,RUR')
 var ethPriceres = await priceRes.json()
 var gasPriceRes = await fetch('https://ethgasstation.info/json/ethgasAPI.json');
 var gasPriceResJson = await gasPriceRes.json();
    res.render('index', { ethPriceRUR: ethPriceres.RUR, 
                          ethPriceUSD: ethPriceres.USD,
                          gasPriceFast: parseFloat(gasPriceResJson.fast) / 10,
                          gasPriceAverage: parseFloat(gasPriceResJson.average) / 10,
                          langId: 'EN'});
  //res.sendFile( __dirname + "/template/" + "index.html" );
    })


app.get('/chart.html', (req, res) => {
  res.sendFile( __dirname + "/template/" + "chart.html" );
});

app.get('/getTransactions/', async(req, resp) => {
  var network = req.query.network;
  var address = req.query.address;
  if(network != 'mainnet') {
    var apiUrl = 'https://api-' + network + '.etherscan.io/api?module=account&action=txlist&address=' + address + '&page=1&offset=100&startblock=0&endblock=99999999&sort=desc&apikey=' + '5ER3GKQF84DXVA26MJSXGNVMM8FHTIF4GR';
  }
  else {
    var apiUrl = 'https://api.etherscan.io/api?module=account&action=txlist&address=' + address + '&page=1&offset=100&startblock=0&endblock=99999999&sort=desc&apikey=' + '5ER3GKQF84DXVA26MJSXGNVMM8FHTIF4GR';
  }
  var txData = await fetch(apiUrl);
    resp.send(await txData.text());

 
})
//res, err := http.Get(strings.Join([]string{"http://api", apiNetwork, ".etherscan.io/api?module=account&action=txlist&address=", address, "&page=1&offset=100&startblock=0&endblock=99999999&sort=desc&apikey=", randKey()}, ""))


app.use(function(req, res, next) {
  res.sendFile( __dirname + "/template/" + "404.html" );
});

app.listen(port, () => {
  console.log(`Listening on http://localhost:${port}!`)
})
<?php
/*cerner_2^5_2017*/
$response = file_get_contents("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=CERN&apikey=UZS4G9WC45H9LJCG");
$json = json_decode($response);
$key = key($json->{'Time Series (Daily)'});
echo "open:" . $json->{'Time Series (Daily)'}->{$key}->{'1. open'} . PHP_EOL;
echo "high:" . $json->{'Time Series (Daily)'}->{$key}->{'2. high'} . PHP_EOL;
echo "low:" . $json->{'Time Series (Daily)'}->{$key}->{'3. low'} . PHP_EOL;
echo "close:" . $json->{'Time Series (Daily)'}->{$key}->{'4. close'} . PHP_EOL;
echo "volume:" . $json->{'Time Series (Daily)'}->{$key}->{'5. volume'} . PHP_EOL;
?>
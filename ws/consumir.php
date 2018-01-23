<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_PORT => "8080",
  CURLOPT_URL => "http://localhost:8080/universegame/ws/noticias/index.php",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_POSTFIELDS => "[{\"titulo\":\"BattleField 1\",\"imagen\":\"btf1.jpg\",\"descripcion\":\"Se podra jugar en linea con 80 usuarios \"}]",
  CURLOPT_HTTPHEADER => array(
    "Cache-Control: no-cache",
    "Postman-Token: e0d58433-8222-5136-45e3-617ada909f4f"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  //echo $response;
}
$noticias=json_decode($response);
echo "<pre>";
//print_r($noticias);

?>
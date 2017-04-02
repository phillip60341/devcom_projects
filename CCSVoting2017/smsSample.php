<?php
include "smsGateway.php";
$smsGateway = new SmsGateway('kim_patrick001@yahoo.com', 'Rinskf0ksfS6ksAlLj7IngmaEs1');

$deviceID = 39758;
$number = '+639292312809';
$message = 'pogi ako';

$options = [
'send_at' => strtotime('+1 minutes'), // Send the message in 1 minutes
'expires_at' => strtotime('+1 hour') // Cancel the message in 1 hour if the message is not yet sent
];

//Please note options is no required and can be left out
$result = $smsGateway->sendMessageToNumber($number, $message, $deviceID);

echo "$number, $message";




?>

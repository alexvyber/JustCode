<?

$fp = fopen("text.txt", 'wb');
for ($j = 0 ; $j <= 100 ; ++$j)
{
$written = fwrite($fp, "data $j \n");
if ($written == FALSE) break;
}
fclose($fp);

























































?>

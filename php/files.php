
<?


// if(file_exists("content.txt")) echo "Shit";
// else echo "no shit";

$shit = fopen("shit", 'w') or die("Failed to create or open file");

$text = "Some text\n\nMore shit";

fwrite($shit, $text) or die("Cant write your shit");
fclose($shit);

echo "Your shit has been written";



?>

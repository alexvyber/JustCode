
<?php
$object = new User;
// print_r($object);

$shit = new User('Masha', 'asdf');

print_r($shit);
$shit->save_user();


class User 
{
public $name, $password;
function save_user() {
echo "Save User code goes here";
}
}














?>

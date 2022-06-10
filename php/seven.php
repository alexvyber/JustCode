
<?php
Translate::lookup();
class Translate
{
const ENGLISH = 0;
const SPANISH = "SOME TEXT";
const FRENCH = 2;
const GERMAN = 3;
// ...
static function lookup()
{
echo self::SPANISH;
}
}
?>

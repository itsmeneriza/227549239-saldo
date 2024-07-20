<?php

echo "Enter your name: ";
$name = trim(fgets(STDIN));

echo "Enter your age: ";
$age = trim(fgets(STDIN));

if (is_numeric($age)) {
    echo "Hello, $name! You are $age years old." . PHP_EOL;
} else {
    echo "Please enter a valid age." . PHP_EOL;
}
?>
}
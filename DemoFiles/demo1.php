<?php

while (true) {
    while (true) {
        echo "Enter your name: ";
        $name = trim(fgets(STDIN));

        echo "Enter your age: ";
        $age = trim(fgets(STDIN));

        if (is_numeric($age)) {
            echo "Hello, $name! You are $age years old." . PHP_EOL;
            break;
        } else {
            echo "Please enter a valid age." . PHP_EOL;
        }
    }

    echo "Would you like to try again? (yes/no): ";
    $response = trim(fgets(STDIN));

    if (strtolower($response) !== 'yes') {
        echo "Exiting the program." . PHP_EOL;
        break;
    }
}

?>

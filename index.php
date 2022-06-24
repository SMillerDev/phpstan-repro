<?php declare(strict_types = 1);

use \Lunr\Core\Configuration;
use \Lunr\Core\ConfigServiceLocator;

class HelloWorld
{
	public function sayHello(string $date): void
	{
		echo 'Hello, ' . $date;
	}
}
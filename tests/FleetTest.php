<?php

use Laravel\Lumen\Testing\DatabaseMigrations;
use Laravel\Lumen\Testing\DatabaseTransactions;

class FleetTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testIndexStatusCode_Should_Be_401()
    {
        $this->get('/fleets')->seeStatusCode(401);

    }
}

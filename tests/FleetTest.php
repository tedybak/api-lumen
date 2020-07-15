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
    public function testIndexStatusCodeShouldBe401()
    {
        $this->get('/fleets')->seeStatusCode(401);
    }

    public function testCreateNewResourceShouldShowStatusCode401()
    {
        $this->post('/fleets')->seeStatusCode(401);
    }

    public function testUpdateResourceShouldShowStatusCode401()
    {
        $this->put('/fleets')->seeStatusCode(405);
    }
}

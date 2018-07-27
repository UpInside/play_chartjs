<?php
/**
 * Created by PhpStorm.
 * User: gustavoweb
 * Date: 24/07/2018
 * Time: 16:13
 */

define('DATABASE', [
    'HOST' => 'localhost',
    'USER' => 'root',
    'PASS' => '',
    'NAME' => 'play_chart'
]);

require_once __DIR__ . '/source/crud/Conn.php';
require_once __DIR__ . '/source/crud/Read.php';

require_once __DIR__ . '/source/helpers/Chart.php';
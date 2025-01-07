<?php

include "./connect.php";

$userid = filterRequest("id");

getAllData("notifications", "notification_userid = $userid");

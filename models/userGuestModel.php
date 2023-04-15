<?php 

require '../assets/php/database.php';
require '../assets/php/queries.php';

$conn = new database;
$query = new queries;

$fn = $_POST["fn"];

if (function_exists($fn)) {
    call_user_func($fn);
} else {
    echo "Function not found";
}


function saveGuests()
{
    global $conn, $query;

    try {
        $fullname = $_POST["fullname"];
        $email = $_POST["email"];
        $website = $_POST["website"];
        $comment = $_POST["comment"];

        if ($conn->getStatus()) {
            $stmt = $conn->getConn()->prepare($query->saveGuestQuery());
            $stmt->execute(array($fullname, $email, $website, $comment));
            $res = $stmt->fetch();

            if (!$res) {
                echo "200";
                $conn->closeConn();
            } else {
                echo "404";
                $conn->closeConn();
            }
        } else {
            echo "Database Error: " . 500;
        }
    } catch (PDOException $e) {
        echo "Error : " . $e->getMessage();
    }
}

function getGuests()
{
    global $conn, $query;

    try {

        if ($conn->getStatus()) {
            $stmt = $conn->getConn()->prepare($query->getGuestQuery());
            $stmt->execute();
            $res = $stmt->fetchAll();
            $conn->closeConn();
            echo json_encode($res);
        } else {
            echo "Database Error: " . 500;
        }
    } catch (PDOException $e) {
        echo "Error : " . $e;
    }
}

?>
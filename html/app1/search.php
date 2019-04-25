<?php
// (1) CONNECT DATABASE
// ! CHANGE THESE TO YOUR OWN !

define('DB_HOST', 'db');
define('DB_NAME', 'database');
define('DB_CHARSET', 'utf8');
define('DB_USER', 'root');
define('DB_PASSWORD', '123456');

try {
  $pdo = new PDO(
    "mysql:host=" . DB_HOST . ";charset=" . DB_CHARSET . ";dbname=" . DB_NAME,
    DB_USER, DB_PASSWORD, [ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false ]
  );
} catch (Exception $ex) {
  die($ex->getMessage());
}

// SEARCH
$stmt = $pdo->prepare("SELECT * FROM `users` WHERE `name` LIKE ? OR `email` LIKE ?");
$stmt->execute(["%" . $_POST['search'] . "%", "%" . $_POST['search'] . "%"]);
$results = $stmt->fetchAll();

if (isset($_POST['ajax'])) {
  echo json_encode($results);
}
?>

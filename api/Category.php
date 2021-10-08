<?php
require_once "../config/Database.php";

use App\Database;

class Category
{

    private $database;

    public function __construct($db)
    {
        $this->database = $db;
        $this->render();
    }

    private function render()
    {
        header("Access-Control-Allow-Origin: *");
        header('Content-Type: application/json; charset=utf-8');

        if ($_GET['controller'] == 'getCategories') {
            $this->getCategories();
        }
        if ($_GET['controller'] == 'getSmallestPriceByCategory') {
            $this->getSmallestPriceByCategory();
        }
    }

    /**
     * Return all categories that exist in database
     */
    private function getCategories()
    {
        $select_subject = "SELECT * FROM category_table";
        $result = mysqli_query($this->database->link, $select_subject);

        while ($value = mysqli_fetch_object($result)) {
            $value = get_object_vars($value);
            $data[] = $value;
        }

        $data = ['error' => '0', 'data' => $data];
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }

    private function getSmallestPriceByCategory() {
        $select_subject = "SELECT MIN(price) as min_price FROM product_table where category_id = ".$_GET['category_id'];
        $result = mysqli_query($this->database->link, $select_subject);

        while ($value = mysqli_fetch_object($result)) {
            $value = get_object_vars($value);
            $data[] = $value;
        }

        $data = ['error' => '0', 'data' => $data];
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
}

$a = new Category(new Database());
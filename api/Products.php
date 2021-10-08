<?php
require_once "../config/Database.php";

use App\Database;

class Products
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

        if ($_GET['controller'] == 'getProducts') {
            $this->getProducts();
        }

        if ($_GET['controller'] == 'getProductsByCategory') {
            $this->getProductsByCategory();
        }

        if ($_GET['controller'] == 'getProductsByRating') {
            $this->getProductsByRating();
        }
    }

    /**
     * Return all products that exist in database
     */
    public function getProducts()
    {
        $select = "SELECT * FROM product_table";
        $this->bindQueryToData($select);
    }

    /**
     * Return all products that exist in database
     */
    public function getProductsByCategory()
    {
        $select_subject = "SELECT * FROM product_table where category_id = ".$_GET['category_id'];
        $this->bindQueryToData($select_subject);
    }

    /**
     * Return all products where rating equal 1
     */
    public function getProductsByRating()
    {
        $select_subject = "SELECT * FROM product_table where rating = 1";
        $this->bindQueryToData($select_subject);
    }

    private function bindQueryToData($sql_query)
    {
        $result = mysqli_query($this->database->link, $sql_query);
        while ($value = mysqli_fetch_object($result)) {
            $value = get_object_vars($value);
            $value['features'] = json_decode($value['features'], JSON_UNESCAPED_UNICODE);
            $data[] = $value;
        }

        $data = ['error' => '0', 'data' => $data];
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
}

$a = new Products(new Database());
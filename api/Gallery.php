<?php
require_once "../lib/Resize.php";
require_once "../config/Database.php";

use App\Resize;
use App\Database;

class Gallery
{
    private $gallery_path = '../images';
    private $thumbnails_path = "../thumbnails";

    public function __construct($db)
    {
        $this->database = $db;
        if (!is_dir($this->thumbnails_path)) {
            mkdir($this->thumbnails_path);
        }
        $this->render();
    }

    private function render()
    {
        header("Access-Control-Allow-Origin: *");
        header('Content-Type: application/json; charset=utf-8');

        if ($_GET['controller'] == 'getGallery') {
            $this->getGallery();
        }

        if ($_GET['controller'] == 'createThumbnails') {
            $this->createThumbnails();
        }
        if ($_GET['controller'] == 'getThumbnails') {
            $this->getThumbnails();
        }
    }

    private function getGallery()
    {
        $select_subject = "SELECT * FROM gallery_table";
        $result = mysqli_query($this->database->link, $select_subject);

        while ($value = mysqli_fetch_object($result)) {
            $value = get_object_vars($value);
            $data[] = $value;
        }

        $data = ['error' => '0', 'data' => $data];
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }

    private function createThumbnails()
    {
        $picture_names = scandir($this->gallery_path, 1);

        foreach ($picture_names as $picture_name) {
            if ($picture_name === "..") {
                break;
            }
            $resizeObj = new Resize($this->gallery_path.'/'.$picture_name);

            $resizeObj->resizeImage(150, 100, 'auto');

            $resizeObj->saveImage($this->thumbnails_path.'/'.$picture_name, 100);
        }
    }

    private function getThumbnails() {
        $data = ['error' => '0', 'data' => glob($this->thumbnails_path.'/*')];
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
    }
}

$a = new Gallery(new Database());
<?php
include_once('Controller/ClubController.php');

use Controller\ClubController;

if (isset($_GET["rubrique"])){
    $rubrique = strtolower($_GET["rubrique"]);
    switch($rubrique)
    {
        case "historique":
            ClubController::afficherHistorique($_GET);
            break;

        case "organigramme":
            ClubController::afficherOrganigramme($_GET);
            break;    

        default:
            ClubController::afficherHomePage($_GET);
            break;
    }    
}
else{
    //echo "erreur pas de rubrique";
    ClubController::afficherHomePage($_GET);
}
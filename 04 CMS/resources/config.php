<?php
    // echo DIRECTORY_SEPARATOR;
    defined("DS") ? null : define("DS", DIRECTORY_SEPARATOR);
    // echo DS;

    // ⚡⚡ CONSTATES PARA RUTAS RELATIVAS -> VIEWS
    // echo __DIR__;
    defined("VIEW_FRONT") ? null : define("VIEW_FRONT", __DIR__ . DS . "views" . DS . "front" );
    defined("VIEW_BACK") ? null : define("VIEW_BACK", __DIR__ . DS . "views" . DS . "back" );
    // echo VIEW_BACK;

?>
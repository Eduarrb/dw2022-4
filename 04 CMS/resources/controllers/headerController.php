<?php
    // FRONT
    function get_header(){
        $query = query("SELECT * FROM header");
        confirm($query);
        return fetch_array($query);
    }
    // BACK
?>
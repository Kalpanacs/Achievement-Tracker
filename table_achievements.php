<?php
  session_start();
/*
 * DataTables example server-side processing script.
 *
 * Please note that this script is intentionally extremely simple to show how
 * server-side processing can be implemented, and probably shouldn't be used as
 * the basis for a large complex system. It is suitable for simple use cases as
 * for learning.
 *
 * See http://datatables.net/usage/server-side for full details on the server-
 * side processing requirements of DataTables.
 *
 * @license MIT - http://datatables.net/license_mit
 */
 
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Easy set variables
 */
header( 'Content-Type: text/html; charset=utf-8'); 
// DB table to use
$table = 'achievements';
 
// Table's primary key
$primaryKey = 'am_id';
 
// Array of database columns which should be read and sent back to DataTables.
// The `db` parameter represents the column name in the database, while the `dt`
// parameter represents the DataTables column identifier. In this case simple
// indexes
$columns = array(
    array( 'db' => 'am_id', 'dt' => 0 ),
    array( 'db' => 'am_name', 'dt' => 1 ),
    array( 'db' => 'am_certificate', 'dt' => 2 ),
    array(
        'db'        => 'am_certificate',
        'dt'        => 2,
        'formatter' => function( $d, $row ) {
            return "<img src='".$d."' height='100' width='100'>";
            // return "Hi";
            // return date( 'jS M y', strtotime($d));
        }
    ),

);

if($_SESSION['role'] == "Admin") {
    $where = "am_status != 1";
} else {
    $where = "am_status != 1 AND am_created_by = '".$_SESSION['email']."'";
}

include_once('table_conn.php');
 
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * If you just want to use the basic configuration for DataTables with PHP
 * server-side, there is no need to edit below this line.
 */
 
require( 'ssp.class.php' );
 
echo json_encode(
    SSP::complex( $_GET, $sql_details, $table, $primaryKey, $columns, $where )
);
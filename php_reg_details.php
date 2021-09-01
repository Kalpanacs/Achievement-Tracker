<?php
 
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
// $table = 'reg_details';
$table = <<<EOT
 (
    SELECT 
      *
    FROM reg_details 
    GROUP BY rd_participant_id
 ) temp
EOT;
 
// Table's primary key
$primaryKey = 'id';
 
// Array of database columns which should be read and sent back to DataTables.
// The `db` parameter represents the column name in the database, while the `dt`
// parameter represents the DataTables column identifier. In this case simple
// indexes
$columns = array(
    array( 'db' => 'id', 'dt' => 0 ),
    array( 'db' => 'rd_participant_id', 'dt' => 1 ),
    array( 'db' => 'rd_participant_name', 'dt' => 2 ),
    array( 'db' => 'rd_mobile_no', 'dt' => 3 ),
    array( 'db' => 'rd_email_id', 'dt' => 4 ),
    array( 'db' => 'rd_event_name', 'dt' => 5 ),
    // array( 'db' => 'rd_label_name', 'dt' => 5 ),
    // array( 'db' => 'rd_label_value', 'dt' => 6 ),
    array( 'db' => 'created_at', 'dt' => 6 ),

   
);

$where = "rd_status != 1";

$sql_details = array(
    'user' => 'buddha',
    'pass' => 'Jenna@Buddha567',
    'db'   => 'buddha',
    'host' => 'localhost'
);
 
 
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * If you just want to use the basic configuration for DataTables with PHP
 * server-side, there is no need to edit below this line.
 */
 
require( 'ssp.class_reg.php' );
 
echo json_encode(
    SSP::complex( $_GET, $sql_details, $table, $primaryKey, $columns, $where )
);
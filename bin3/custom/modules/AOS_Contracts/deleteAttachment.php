<?php
ob_clean();
$id = $_REQUEST['contract_id'];
$contract = new AOS_Contracts();
$contract->retrieve($id);
$response = 'not_done';

global $db;
$removeAttachmentQuery = "UPDATE aos_contracts SET file_mime_type='', filename='' where id='" . $id . "';";
echo $removeAttachmentQuery;
$db->query($removeAttachmentQuery);
$removeFile = "upload://{$id}";
unlink($removeFile);
$response = 'done';

echo $response;
exit();

?>
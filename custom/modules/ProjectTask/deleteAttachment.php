<?php
ob_clean();
$id = $_REQUEST['projecttask_id'];
$projectTask = new ProjectTask();
$projectTask->retrieve($id);
$response = 'not_done';

global $db;
$removeAttachmentQuery = "UPDATE project_task SET file_mime_type='', filename='' where id='" . $id . "';";
echo $removeAttachmentQuery;
$db->query($removeAttachmentQuery);
$removeFile = "upload://{$id}";
unlink($removeFile);
$response = 'done';

echo $response;
exit();

?>
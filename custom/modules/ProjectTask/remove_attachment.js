$(document).ready(function (e) {
    var projectTaskId = $('[name=record]').val();
    document.getElementById('remove_button').onclick = function () {
        if (projectTaskId != "") {
            $.ajax({
                type: "GET",
                url: "index.php?action=deleteAttachment&module=ProjectTask&projecttask_id=" + projectTaskId,
                async: false,
                success: function (data) {
                    document.getElementById('filename_old').innerHTML = '';
                    document.getElementById('filename_new').style.display = 'block';
                }
            });
        }
    }
});



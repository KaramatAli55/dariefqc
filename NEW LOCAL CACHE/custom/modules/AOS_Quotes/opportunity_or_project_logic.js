$(document).ready(function (e) {
    $('#opportunity_or_project').change(function () {
        handleOpportunityorProject();
    });
    handleOpportunityorProject();
});

function handleOpportunityorProject() {

    var value = $("#opportunity_or_project").val();
    if (value == "opportunity") {
        $("#opportunity_id").parent().parent().show();
        $("#relate_project_id").parent().parent().hide();
        var form = document.getElementById('EditView');
        if (form) {
            parent.SUGAR.clearRelateField(form, 'relate_project_name', 'relate_project_id');
        }
    } else if (value == 'project') {
        $("#relate_project_name").parent().parent().show();
        $("#opportunity_id").parent().parent().hide();
        var form = document.getElementById('EditView');
        if (form) {
            parent.SUGAR.clearRelateField(form, 'opportunity', 'opportunity_id');
        }

    }
}
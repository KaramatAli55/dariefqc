$(document).ready(function (e) {
    $('#type_c').on('change', function () {
        document_type()
    });
    document_type();

    $('#requires_permit').on('change', function () {
        handlePermitField();
    });
    handlePermitField();
});

function document_type() {

    var value = $("#type_c").val();
    if (value == "service") {
        $("#requires_permit").parent().parent().hide();
        $("#permit_value").parent().parent().hide();
        $("#requires_permit").val('no');
        $("#permit_value").val('');
    } else {
        $("#requires_permit").parent().parent().show();
        var value = $('#requires_permit').val();
        if (value == 'yes') {
            $("#permit_value").parent().parent().show();
        }
    }
}

function handlePermitField() {
    var value = $('#requires_permit').val();
    if (value == 'yes') {
        $("#permit_value").parent().parent().show();
    }
    else if (value == 'no' || value == '') {
        $("#permit_value").parent().parent().hide();
    }
}
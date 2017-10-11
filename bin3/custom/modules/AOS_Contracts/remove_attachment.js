$(document).ready(function (e) {
    var contractId = $('[name=record]').val();
    $("#remove_button").click(function () {
        if (contractId != "") {
            $.ajax({
                type: "GET",
                url: "index.php?action=deleteAttachment&module=AOS_Contracts&contract_id=" + contractId,
                async: false,
                success: function (data) {
                    window.location.reload();
                }
            });
        }
    });
});



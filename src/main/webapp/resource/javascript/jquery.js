function change(href) {
    $.get(href, function(html){
        $('.exchange').html(html);
    });
}

function sendE() {
    var elName = $('input[name = name]').val();
    var elPhone = $('input[name = phone]').val();
    var elMail = $('input[name = email]').val();
    var jqxhr = $.get('/sendEmail', {name:elName, phone:elPhone, email:elMail});
        jqxhr.done(function(html){
            $('.exchange').html(html);
        });
        jqxhr.fail(function (jqXHR, exception) {
            var msg = '';
            if (jqXHR.status === 0) {
                msg = 'Not connect.\n Verify Network.';
            } else if (jqXHR.status == 404) {
                msg = 'Requested page not found. [404]';
            } else if (jqXHR.status == 500) {
                msg = 'Internal Server Error [500].';
            } else if (exception === 'parsererror') {
                msg = 'Requested JSON parse failed.';
            } else if (exception === 'timeout') {
                msg = 'Time out error.';
            } else if (exception === 'abort') {
                msg = 'Ajax request aborted.';
            } else {
                msg = 'Uncaught Error.\n' + jqXHR.responseText;
            }
            $('html').html(msg);
        });
}
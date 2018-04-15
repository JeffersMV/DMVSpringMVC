function change(href) {
    $.get(href, function(html){
        document.open("text/html", "replace");
        document.write(html);
        document.close();
    });
}

function sendE() {
    var elAction = $('input[name = action]').val();
    var elName = $('input[name = name]').val();
    var elPhone = $('input[name = phone]').val();
    var elMail = $('input[name = email]').val();
    var jqxhr = $.get('/sendEmail', {action:elAction, name:elName, phone:elPhone, email:elMail});
        jqxhr.done(function(html){
            document.open("text/html", "replace");
            document.write(html);
            document.close();
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
function change(href) {
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
    xmlHttpRequest.open("GET", href, false);
    xmlHttpRequest.setRequestHeader("Content-Type", "multipart/form-data");
    xmlHttpRequest.send();
}

function sendE() {
    var elAction = encodeURIComponent(document.forms['formSend']['action'].value);
    var elName = encodeURIComponent(document.forms['formSend']['name'].value);
    var elPhone = encodeURIComponent(document.forms['formSend']['phone'].value);
    var elMail = encodeURIComponent(document.forms['formSend']['e-mail'].value);
    var params = "action="+elAction+"&name=" + elName + "&phone=" + elPhone + "&e-mail=" + elMail;
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
    xmlHttpRequest.open("GET", "/sendEmail?"+params, false);
    xmlHttpRequest.setRequestHeader("Content-Type", "multipart/form-data");
    xmlHttpRequest.send(null);
}

function getXMLHttpRequest() {
    var xmlHttpReq = false;
    if (window.XMLHttpRequest) {
        xmlHttpReq = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        try {
            xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (exp1) {
            try {
                xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (exp2) {
                xmlHttpReq = false;
            }
        }
    }
    return xmlHttpReq;
}

function getReadyStateHandler(xmlHttpRequest) {
    return function () {
        if (xmlHttpRequest.readyState === 4) {
            if (xmlHttpRequest.status === 200) {
                // console.log(xmlHttpRequest.response);
                document.body.innerHTML = xmlHttpRequest.responseText;
            } else {
                alert("HTTP error " + xmlHttpRequest.status + ": " + xmlHttpRequest.statusText);
            }
        }
    };
}
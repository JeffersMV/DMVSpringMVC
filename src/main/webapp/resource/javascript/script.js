function change(href) {
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
    xmlHttpRequest.open("POST", href, false);
    xmlHttpRequest.send();
    document.getElementById("changebody").innerHTML = xmlHttpRequest.responseText;
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
                console.log(xmlHttpRequest.responseText);
                document.getElementById("homeResponse").innerHTML = xmlHttpRequest.responseText;
            } else {
                alert("HTTP error " + xmlHttpRequest.status + ": " + xmlHttpRequest.statusText);
            }
        }
    };
}


function makeRequest() {
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
    xmlHttpRequest.open("GET", "/c1", true);
    xmlHttpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xmlHttpRequest.send();
}

function audio() {
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
    xmlHttpRequest.open("GET", "/ShowServlet?action=audio", true);
    // alert(xmlHttpRequest.getAllResponseHeaders());
    xmlHttpRequest.setRequestHeader("Content-Type", "multipart/form-data");
    // alert(xmlHttpRequest.getAllResponseHeaders());
    xmlHttpRequest.send("action=audio");
    alert(xmlHttpRequest.getAllResponseHeaders());
    document.getElementById("changebody").innerHTML = xmlHttpRequest.responseText;
}
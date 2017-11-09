$(document).ready(function() {
    $("#region").click(function(e) {
        if (is_r_correct()) {
            var xClick = e.pageX - $(this).offset().left;
            var yClick = e.pageY - $(this).offset().top;

            var r = parseFloat(document.getElementById("input_r").value);
            var x = ((xClick - 127) / 100) * r;
            var y = (-(yClick - 127) / 100) * r;

            alert("x:" + x + " y:" + y);

            document.getElementById("input_x").value = x;

            $("#input_y").append( $('<option value=\"' + y + '\">yClick</option>'));
            $("#input_y").find(":last").attr("selected", "selected");

            document.getElementById('form').submit();

            $("#input_y").find(":last").remove();

            // var xmlhttp = getXmlHttp(); // Создаём объект XMLHTTP
            // xmlhttp.open('POST', 'form');
            // xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); // Отправляем кодировку
            // xmlhttp.send("input_x=" + encodeURIComponent(x.toString()) + "&input_y=" +
            //     encodeURIComponent(y.toString()) + "&input_r=" + encodeURIComponent(r.toString())); // Отправляем POST-запрос
        } else {
            alert ("Choose R");
        }
    })
});

function is_r_correct() {
    return (document.getElementById("input_r").value !== "") && (document.getElementById("input_r").value !== null) &&
        (document.getElementById("input_r").value !== "choose r");
}

function getXmlHttp() {
    var xmlhttp;
    try {
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            xmlhttp = false;
        }
    }
    if (!xmlhttp && typeof XMLHttpRequest!=='undefined') {
        xmlhttp = new XMLHttpRequest();
    }
    return xmlhttp;
}
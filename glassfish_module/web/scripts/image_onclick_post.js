$(document).ready(function() {
    $("#region").click(function(e) {
        if (is_r_correct()) {
            var xClick = e.pageX - $(this).offset().left;
            var yClick = e.pageY - $(this).offset().top;

            var r = parseFloat(document.getElementById("input_r").value);
            var x = ((xClick - 125) / 100) * r;
            var y = (-(yClick - 125) / 100) * r;

            alert("x:" + x + " y:" + y);

            document.getElementById("input_x").value = x;

            $("#input_y").append( $('<option value=\"' + y + '\">yClick</option>'));
            $("#input_y").find(":last").attr("selected", "selected");

            document.getElementById('form').submit();

            $("#input_y").find(":last").remove();
        } else {
            alert ("Choose R");
        }
    })

    /*$("#region1").click(function(e) {
        if (is_r_correct()) {
            var xClick = e.pageX - $(this).offset().left;
            var yClick = e.pageY - $(this).offset().top;

            var r = parseFloat(document.getElementById("input_r").value);
            var x = ((xClick - 125) / 100) * r;
            var y = (-(yClick - 125) / 100) * r;

            alert("x:" + x + " y:" + y);

            document.getElementById("input_x").value = x;

            $("#input_y").append( $('<option value=\"' + y + '\">yClick</option>'));
            $("#input_y").find(":last").attr("selected", "selected");

            document.getElementById('form').submit();

            $("#input_y").find(":last").remove();
        } else {
            alert ("Choose R");
        }
    })*/
});

function is_r_correct() {
    return (document.getElementById("input_r").value !== "") && (document.getElementById("input_r").value !== null) &&
        (document.getElementById("input_r").value !== "choose r");
}

function draw_dote(posx, posy, color) {
    canvas = document.getElementById('imgCanvas');
    context = canvas.getContext('2d');
    context.fillStyle = color;
    context.beginPath();
    context.arc(posx, posy, 2, 0, 2 * Math.PI);
    context.fill();
}
function validate() {
    var x = document.getElementById("input_x");
    var y = document.getElementById("input_y");
    var r = document.getElementById("input_r");

    var fl = true;


    if (!x.value) {
        alert ("Set X");
        fl = false;
    }
    if (!isFinite(parseFloat(+ x.value.replace(',', '.')))) {
        alert("X is not a real number");
        fl = false;
    } else if (parseFloat(+ x.value.replace(',', '.')) < -5.0 || parseFloat(+ x.value.replace(',', '.')) > 5.0) {
        alert("X gotta be between -5 and 5");
        fl = false;
    }


    if (!y.value || y.value === "" || y.value === "choose y") {
        alert ("Choose Y");
        fl = false;
    }

    if (!r.value || r.value === "" || r.value === "choose r") {
        alert ("Choose R");
        fl = false;
    }

    return fl;
}
//
// setInterval(function() {
//     var date = new Date();
//     var time = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
//     document.getElementById("time").innerHTML = time;
// }, 1000)
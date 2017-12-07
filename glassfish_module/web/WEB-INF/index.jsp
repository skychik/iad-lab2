<%@ page import="java.util.ArrayList" %>
<%@ page import="utils.Point" %><%--
  Created by IntelliJ IDEA.
  User: kir-e
  Date: 02.11.2017
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Lab2</title>
        <link rel="stylesheet" href="styles/index.css" type="text/css"/>
        <script type="text/javascript" src="scripts/jquery.js"></script>
        <script type="text/javascript" src="scripts/validation.js"></script>
        <script type="text/javascript" src="scripts/image_onclick_post.js"></script>
    </head>
    <body>
        <form onsubmit="return validate();" method="post" action="form" id="form">
            <table>
                <tr>
                    <td colspan="4">
                        <marquee class="GeneratedMarquee" direction="left" scrollamount="10" behavior="scroll">
Shapka of Esakov Kirill Igorevich, of the blood of Old Chelyaba.
King of Uranus, and the First Spilled Lessons, Gentelman Regnant of the Eight Semesters, Khal of the Great City on the Neva, Breaker of Bugs, the Unexpelled, from group №P3200 (var №6845)
                        </marquee>
                    </td>
                </tr>
                <tr>
                    <td>X:</td>
                    <td class="left_align">
                        <label for="input_x"></label><input type="text" id="input_x" name="input_x" maxlength="11">
                    </td>
                    <td class="warning">
                        <span id="Xwarning"></span>
                    </td>
                    <td rowspan="3">
                        <canvas id="region" width="250" height="250">
                            <%--<img src="images/region1.png" id="region1" alt="region">--%>
                        </canvas>
                        <script type="text/javascript">
                            var canvas = document.getElementById("region");
                            if (canvas && canvas.getContext) {
                                var context = canvas.getContext('2d');
                                context.fillStyle = "#225DAB";
                                context.font = '12.5px "Tahoma"';

                                // border
                                context.strokeRect(0.5, 0.5, canvas.width - 1, canvas.height - 1);

                                //4th quarter
                                context.fillRect(125.5, 125.5, 50.5, 100.5);

                                // 2nd quarter
                                context.beginPath();
                                context.moveTo(75.5, 125.5);
                                context.lineTo(125.5, 25.5);
                                context.lineTo(125.5, 125.5);
                                context.fill();

                                // 1st quarter
                                context.beginPath();
                                context.moveTo(125.5, 125.5);
                                context.lineTo(125.5, 25.5);
                                context.arcTo(225.5, 25.5, 225.5, 125.5, 100);
                                context.fill();

                                // Ox
                                context.fillStyle = "#000";
                                context.beginPath();
                                context.moveTo(10.5, 125.5);
                                context.lineTo(240.5, 125.5);
                                context.stroke();
                                context.moveTo(230.5, 120.5);
                                context.lineTo(240.5, 125.5);
                                context.lineTo(230.5, 130.5);
                                context.stroke();
                                context.moveTo(25.5, 120.5);
                                context.lineTo(25.5, 130.5);
                                context.stroke();
                                context.moveTo(75.5, 120.5);
                                context.lineTo(75.5, 130.5);
                                context.stroke();
                                context.moveTo(175.5, 120.5);
                                context.lineTo(175.5, 130.5);
                                context.stroke();
                                context.moveTo(225.5, 120.5);
                                context.lineTo(225.5, 130.5);
                                context.stroke();
                                context.fillText("-R", 15.5, 115.5);
                                context.fillText("-R/2", 60.5, 115.5);
                                context.fillText("R/2", 165.5, 115.5);
                                context.fillText("R", 220.5, 115.5);

                                // Oy
                                context.moveTo(125.5, 10.5);
                                context.lineTo(125.5, 240.5);
                                context.stroke();
                                context.moveTo(120.5, 20.5);
                                context.lineTo(125.5, 10.5);
                                context.lineTo(130.5, 20.5);
                                context.stroke();
                                context.moveTo(120.5, 25.5);
                                context.lineTo(130.5, 25.5);
                                context.stroke();
                                context.moveTo(120.5, 75.5);
                                context.lineTo(130.5, 75.5);
                                context.stroke();
                                context.moveTo(120.5, 175.5);
                                context.lineTo(130.5, 175.5);
                                context.stroke();
                                context.moveTo(120.5, 225.5);
                                context.lineTo(130.5, 225.5);
                                context.stroke();
                                context.fillText("-R", 100.5, 30.5);
                                context.fillText("-R/2", 90.5, 80.5);
                                context.fillText("R/2", 95.5, 180.5);
                                context.fillText("R", 105.5, 230.5);
                        <%
                                ArrayList<Point> points = (ArrayList<Point>)session.getAttribute("points");
                                if (points != null) {
                                    for (Point point : points) {
                        %>
                                        context.fillStyle = "#42AAFF";
                                        context.beginPath();
                                        var x = <%=point.getX()%>;
                                        var y = <%=point.getY()%>;
                                        var r = <%=point.getR()%>;
                                        var dot_x = 125 + x / r * 100;
                                        var dot_y = 125 - y / r * 100;
                                        context.arc(dot_x, dot_y, 2, 0, 2 * Math.PI);
                                        context.fill();
                        <%          }
                                } else {
                                    points = new ArrayList<Point>();
                                    session.setAttribute("points", points);
                                }
                        %>
                            }
                        </script>
                    </td>
                </tr>
                <tr>
                    <td>Y:</td>
                    <td class="left_align">
                        <label for="input_y"></label><select id="input_y" name="input_y">
                            <option disabled selected y="choose y">choose y</option>
                            <option y="-3">-3</option>
                            <option y="-2">-2</option>
                            <option y="-1">-1</option>
                            <option y="0">0</option>
                            <option y="1">1</option>
                            <option y="2">2</option>
                            <option y="3">3</option>
                            <option y="4">4</option>
                            <option y="5">5</option>
                        </select>
                    </td>
                    <td class="warning">
                        <span id="Ywarning"></span>
                    </td>
                </tr>
                <tr>
                    <td>R:</td>
                    <td class="left_align">
                        <label for="input_r"></label><select id="input_r" name="input_r">
                        <option disabled selected y="choose r">choose r</option>
                        <option y="1">1</option>
                        <option y="1.5">1.5</option>
                        <option y="2">2</option>
                        <option y="2.5">2.5</option>
                        <option y="3">3</option>
                    </select>
                    </td>
                    <td class="warning">
                        <span id="Rwarning"></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="first left_align">
                        <button type="submit" name="submit_form" y="send">Check</button>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="first">
                        <a href="images/region.png" class="link">Link on var №6845</a>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
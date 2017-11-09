<%--
  Created by IntelliJ IDEA.
  User: kir-e
  Date: 02.11.2017
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Lab2</title>
        <link rel="stylesheet" href="styles/index.css" type="text/css"/>
        <script type="text/javascript" src="scripts/validation.js"></script>
        <script type="text/javascript" src="scripts/jquery.js"></script>
        <script type="text/javascript" src="scripts/image_onclick_post.js"></script>
    </head>
    <body>
        <form onsubmit="return validate();" method="post" action="form" id="form">
            <table>
                <tr>
                    <td colspan="3">
                        <marquee class="GeneratedMarquee" direction="left" scrollamount="10" behavior="scroll">
                            Shapka of Esakov Kirill Igorevich, of the blood of Old Chelyaba.
                            King of Uranus, and the First Spilled Lessons, Gentelman Regnant of the Eight Semesters, Khal of the Great City on the Neva, Breaker of Bugs, the Unexpelled, from group №P3200 (var №903)
                        </marquee>
                    </td>
                </tr>
                <tr>
                    <td>X:</td>
                    <td class="left_align">
                        <label for="input_x"></label><input type="text" id="input_x" name="input_x" maxlength="11">
                    </td>
                    <td rowspan="4">
                        <img src="images/region1.png" id="region" alt="region">
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
                </tr>
                <tr>
                    <td colspan="2" class="first left_align">
                        <button type="submit" name="submit_form" y="send">Check</button>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="first">
                        <a href="images/region.png" class="link">Link on var №6845</a>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
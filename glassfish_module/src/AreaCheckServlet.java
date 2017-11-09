import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import static java.lang.Math.pow;

public class AreaCheckServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession(true);
		ArrayList<Point> points = (ArrayList<Point>)session.getAttribute(session.getId());
		if (points == null) {
			points = new ArrayList<>();
			session.setAttribute(session.getId(), points);
		}

		// время начала работы скрипта
//		Timer timer = new Timer();

		double x = Double.parseDouble(request.getParameter("input_x"));
		double y = Double.parseDouble(request.getParameter("input_y"));
		double r = Double.parseDouble(request.getParameter("input_r"));
		boolean inRange;
		if (x >= 0) {
			if (y >= 0.0) {                             // 1st quarter
				inRange = pow(x, 2) + pow(y, 2) <= pow(r, 2);
			} else inRange = (x <= r/2) && (y >= -r);   // 4th quarter
		} else if (y >= 0.0) {   					    // 2nd quarter
			inRange = (y <= r + x*2);
		} else inRange = false;						    // 3rd quarter

		points.add(new Point(x, y, r, inRange));

		// HTML:
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print(
				"<!DOCTYPE HTML html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n" +
				"<html>\n" +
				"\t<head>\n" +
				"\t\t<meta charset=\"utf-8\">\n" +
				"\t\t<title>Answer</title>\n" +
				"\t\t<link rel=\"stylesheet\"  type=\"text/css\" href=\"styles/area_check.css\" />\n" +
				"\t</head>\n" +
				"\t<body>\n" +
				"\t\t<center>\n" +
				"\t\t\t<h2>Answer:</h2>\n" +
				"\t\t\t<h3>\n" +
				"\t\t\t\tPoint: x=" + x + ", y=" + y + " with r=" + r + "<p>");
		if(inRange)out.print("is");else out.print("is not");
		out.print(
				"</p>in region\n" +
		        "\t\t\t</h3>\n" +
		        "\t\t\t<h5>\n" +
				"\t\t\t\t<a href=\"form\">Link to form</a>\n" +
		        "\t\t\t</h5>\n" +
//		        "\t\t<h5>\n" +
//		        "\t\t\tDone in " + timer.finish() + "milliseconds\n" +
//		        "\t\t</h5>\n" +
		        "\t\t\t<table>\n" +
		        "\t\t\t\t<tr><td>№</td><td>X</td><td>Y</td><td>R</td></tr>\n");
        for (int i = 0; i < points.size(); i++) {
	        out.print(
	        	"\t\t\t\t<tr><td>" + (i + 1) + ":</td><td>" + points.get(i).getX() + "</td><td>" +
				points.get(i).getY() + "</td><td></td><td>");
	        if (points.get(i).getInRange()) {out.print("in");} else {out.print("not in");}
	        out.print(
	        	"</td></tr>\n");
        }
		out.print(
				"\t\t\t</table>\n" +
				"\t\t</center>\n" +
		        "\t</body>\n" +
		        "</html>");
	}
}
//    class History {
//        private static ArrayList<Character> matrix;
//
//        static void addElementsFromString(String str) {
//            for (int i = 0; i < str.length(); i++) {
//            	switch (str.charAt(i)) {
//                    case '0':
//                    case '1':
//                    case '2':
//                    case '3':
//                    case '4':
//                    case '5':
//                    case '6':
//                    case '7':
//                    case '8':
//                    case '9':
//                    case ',':
//                    case '.':
//                    	matrix.add(str.charAt(i));
//                }
//            }
//        }
//
//        static void addElements(double x, double y, double r) {
//            array = array(x, y, r);
//            matrix[count(self::$matrix)] = $array;
//        }
//
//        static function reload() {
//            self::$matrix;
//            $history = fopen("./history.txt", 'r') or die("can't open file(reload)");
//            while(!feof($history)) {
//                $str = fgets($history);
//                //echo "str: |" . $str . "|" . PHP_EOL;
//                if ($str <> "")
//                    self::addElementsFromString($str);
//            }
//            fclose($history);
//        }
//
//        static function get_element($num, $type) {
//            if ($type == "x") {
//            	return self::$matrix[$num][0];
//            }
//            if ($type == "y") {
//                return self::$matrix[$num][1];
//            }
//            if ($type == "r") {
//                return self::$matrix[$num][2];
//            }
//            return "!!!wrong:" . $type;
//        }
//
//        static function save() {
//            $history = fopen("./history.txt", 'w+') or die("can't open file(save)");
//            for ($i = 0; $i < count(self::$matrix); $i++) {
//                fwrite($history, self::$matrix[$i][0] . " " . self::$matrix[$i][1] . " " . self::$matrix[$i][2] . PHP_EOL);
//            }
//            fclose($history);
//        }
//
//        static function get_count() {
//            return count(self::$matrix);
//        }
//
//        static function echo_matrix() {
//            for ($i = 0; $i < count(self::$matrix); $i++) {
//                echo count(self::$matrix) . '|' . self::$matrix[$i][0] . '|' . self::$matrix[$i][1] . '|' . self::$matrix[$i][2] . ' ';
//            }
//        }
//    }

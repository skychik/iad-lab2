import java.io.Serializable;
import java.util.Map;

public class Point implements Serializable {
	private final Double x;
	private final Double r;
	private final Double y;
	private final boolean inRange;

	public Point(double x, double y, double r, boolean inRange) {
	    this.x = x;
	    this.y = y;
	    this.r = r;
	    this.inRange = inRange;
    }

    public Double getX() {
        return x;
    }

	public Double getY() {
		return y;
	}

	public Double getR() {
		return r;
	}

	public boolean getInRange() {
		return inRange;
	}

	public boolean equals(Object o) {
		if (!(o instanceof Point))
			return false;
		Point e = (Point)o;
		return eq(x, e.getX()) && eq(y, e.getY()) && eq(r, e.getR()) && eq(inRange, e.getInRange());
	}

	/**
	 * Utility method for SimpleEntry and SimpleImmutableEntry.
	 * Test for equality, checking for nulls.
	 *
	 * NB: Do not replace with Object.equals until JDK-8015417 is resolved.
	 */
	private static boolean eq(Object o1, Object o2) {
		return o1 == null ? o2 == null : o1.equals(o2);
	}

	/**
	 * Returns the hash code y for this map entry.  The hash code
	 * of a map entry {@code e} is defined to be: <pre>
	 *   (e.getX()==null   ? 0 : e.getX().hashCode()) ^
	 *   (e.getY()==null ? 0 : e.getY().hashCode())</pre>
	 * This ensures that {@code e1.equals(e2)} implies that
	 * {@code e1.hashCode()==e2.hashCode()} for any two Entries
	 * {@code e1} and {@code e2}, as required by the general
	 * contract of {@link Object#hashCode}.
	 *
	 * @return the hash code y for this map entry
	 * @see    #equals
	 */
	public int hashCode() {
		return (x == null ? 0 :   x.hashCode()) ^
				(y == null ? 0 : y.hashCode());
	}
}

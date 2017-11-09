class Timer {
	/**
	 * время начала выполнения скрипта
	 */
	private double start = 0.0;

	/**
	 * Начало выполнения
	 */
	Timer () {
		start = System.currentTimeMillis();
	}

	/**
	 * Разница между текущей меткой времени и меткой self::$start
	 * @return double
	 */
	double finish() {
		return System.currentTimeMillis() - start;
	}
}
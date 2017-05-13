acker (m, n) | m == 0 = n + 1
             | m > 0 && n == 0 = acker (m - 1, 1)
	     | m > 0 && n > 0 = acker (m - 1, acker (m, n - 1))

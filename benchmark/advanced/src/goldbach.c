#include "trap.h"
#include "mod.h"
#include "../../lib/include/perf_cnt.h"
#include "../../lib/include/printf.h"

int is_prime(int n) {
	if(n < 2) return 0;

	int i;
	for(i = 2; i < n; i ++) {
		if(mod(n, i) == 0) {
			return 0;
		}
	}

	return 1;
}

int goldbach(int n) {
	int i;
	for(i = 2; i < n; i ++) {
		if(is_prime(i) && is_prime(n - i)) {
			return 1;
		}
	}

	return 0;
}

int main() {
	int n;
	Result res;
	res.msec = 0;

	bench_prepare(&res);
	for(n = 4; n <= 30; n += 2) {
		nemu_assert(goldbach(n) == 1);
	}

	bench_done(&res);
	
	printf("total cycle: %d\n", res.msec);

	return 0;
}

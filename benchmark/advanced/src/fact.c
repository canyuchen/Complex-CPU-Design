#include "trap.h"
#include "mul.h"
#include "../../lib/include/perf_cnt.h"
#include "../../lib/include/printf.h"

int f[15];
int ans[] = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};

int fact(int n) {
	if(n == 0 || n == 1) return 1;
	else return mul_i(fact(n - 1), n);
}

int main() {
	int i;
	Result res;
	res.msec = 0;

	bench_prepare(&res);
	for(i = 0; i < 13; i ++) {
		f[i] = fact(i);
		nemu_assert(f[i] == ans[i]);
	}

	bench_done(&res);
	
	printf("total cycle: %u\n", res.msec);

	return 0;
}


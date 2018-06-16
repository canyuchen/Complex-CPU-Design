#include "trap.h"
#include "mod.h"
#include "../../lib/include/perf_cnt.h"
#include "../../lib/include/printf.h"

int is_leap_year(int n) {
	return (mod(n, 4) == 0 && mod(n, 100) != 0) || (mod(n, 400) == 0);
}

int ans[] = {0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0};

int main() {
	int i;
	Result res;
	res.msec = 0;

	bench_prepare(&res);
	for(i = 0; i < 125; i ++) {
		nemu_assert(is_leap_year(i + 1890) == ans[i]);
	}

	bench_done(&res);
	
	printf("total cycle: %d\n", res.msec);

	return 0;
}

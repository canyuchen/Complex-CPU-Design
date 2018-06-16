#include "trap.h"
#include "mod.h"
#include "../../lib/include/perf_cnt.h"
#include "../../lib/include/printf.h"
int ans[] = {101, 103, 107, 109, 113, 127, 131, 137, 139, 149};

int main() {
	int m, i, n = 0;
	int prime;
	Result res;
	res.msec = 0;

	bench_prepare(&res);
	for(m = 101; m <= 150; m += 2) {
		prime = 1;
		for(i = 2; i < m; i ++) {
			if(mod(m, i) == 0) {
				prime = 0;
				break;
			}
		}
		if(prime) {
			nemu_assert(i == ans[n]);
			n ++;
		}
	}

	nemu_assert(n == 10);

	bench_done(&res);
	
	printf("total cycle: %d\n", res.msec);

	return 0;
}

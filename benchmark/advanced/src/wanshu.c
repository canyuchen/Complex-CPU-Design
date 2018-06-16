#include "trap.h"
#include "mod.h"
#include "perf_cnt.h"
#include "printf.h"
int ans[] = {6, 28};

int main() {
	int n, sum, i, k = 0;
	Result res;
	res.msec = 0;

	bench_prepare(&res);
	for(n = 1; n < 30; n ++) {
		sum = 0;
		for(i = 1; i < n; i ++) {
			if(mod(n, i) == 0) {
				sum += i;
			}
		}
		
		if(sum == n) {
			nemu_assert(n == ans[k]);
			k ++;
		}
	}

	nemu_assert(k == 2);

	bench_done(&res);
	
	printf("total cycle: %u\n", res.msec);

	return 0;
}

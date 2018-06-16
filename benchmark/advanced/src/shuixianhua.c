#include "trap.h"
#include "mul.h"
#include "div.h"
#include "mod.h"
#include "perf_cnt.h"
#include "printf.h"
int ans[] = {153, 370, 371, 407};

int cube(int n) {
	return mul_i(mul_i(n, n), n);
}

int main() {
	int n, n2, n1, n0;
	int k = 0;
	Result res;
	res.msec = 0;

	bench_prepare(&res);
	for(n = 100; n < 500; n ++) {
		n2 = div(n, 100);
		n1 = mod(div(n, 10), 10);
		n0 = mod(n, 10);

		if(n == cube(n2) + cube(n1) + cube(n0)) {
			nemu_assert(n == ans[k]);
			k ++;
		}
	}

	nemu_assert(k == 4);

	bench_done(&res);
	
	printf("total cycle: %u\n", res.msec);

	return 0;
}

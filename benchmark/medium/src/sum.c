#include "trap.h"
#include "../../lib/include/perf_cnt.h"
#include "../../lib/include/printf.h"


int main() {
	int i = 1;

	volatile int sum = 0;
	
	Result res;
	res.msec = 0;

	bench_prepare(&res);

	while(i <= 100) {
		sum += i;
		i ++;
	}

	nemu_assert(sum == 5050);

	bench_done(&res);
	
	printf("total cycle: %u\n", res.msec);

	return 0;
}

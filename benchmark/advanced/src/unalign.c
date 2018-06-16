#include "trap.h"
#include "perf_cnt.h"
#include "printf.h"
unsigned x = 0xffffffff;
unsigned char buf[16];

int main() {
	Result res;
	res.msec = 0;

	bench_prepare(&res);
	*((volatile unsigned*)(buf + 3)) = 0xaabbccdd;

	x = *((volatile unsigned*)(buf + 3));
	nemu_assert(x == 0xaabbccdd);

	bench_done(&res);
	
	printf("total cycle: %u\n", res.msec);

	return 0;
}

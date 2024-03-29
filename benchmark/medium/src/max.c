#include "trap.h"
#include "../../lib/include/perf_cnt.h"
#include "../../lib/include/printf.h"

int max(int x, int y) {
	int z;
	if(x > y) { z = x; }
	else { z = y; }
	return z;
}

int test_data[] = {0, 1, 2, 0x7fffffff, 0x80000000, 0x80000001, 0xfffffffe, 0xffffffff};
int ans[] = {0, 0x1, 0x2, 0x7fffffff, 0, 0, 0, 0, 0x1, 0x1, 0x2, 0x7fffffff, 0x1, 0x1, 0x1, 0x1, 0x2, 0x2, 0x2, 0x7fffffff, 0x2, 0x2, 0x2, 0x2, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0, 0x1, 0x2, 0x7fffffff, 0x80000000, 0x80000001, 0xfffffffe, 0xffffffff, 0, 0x1, 0x2, 0x7fffffff, 0x80000001, 0x80000001, 0xfffffffe, 0xffffffff, 0, 0x1, 0x2, 0x7fffffff, 0xfffffffe, 0xfffffffe, 0xfffffffe, 0xffffffff, 0, 0x1, 0x2, 0x7fffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff};

#define NR_DATA (sizeof(test_data) / sizeof(test_data[0]))

int main() {
	int i, j, ans_idx = 0;
	
	Result res;
	res.msec = 0;

	bench_prepare(&res);

	for(i = 0; i < NR_DATA; i ++) {
		for(j = 0; j < NR_DATA; j ++) {
			nemu_assert(max(test_data[i], test_data[j]) == ans[ans_idx ++]);
		}
		nemu_assert(j == NR_DATA);
	}

	nemu_assert(i == NR_DATA);

	bench_done(&res);
	
	printf("total cycle: %d\n", res.msec);

	return 0;
}

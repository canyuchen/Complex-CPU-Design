#include "trap.h"
#include "perf_cnt.h"
#include "printf.h"


int add(int a, int b) {
	int c = a + b;
	return c;
}

int test_data[] = {0, 1, 2, 0x7fffffff, 0x80000000, 0x80000001, 0xfffffffe, 0xffffffff};
int ans[] = {0, 0x1, 0x2, 0x7fffffff, 0x80000000, 0x80000001, 0xfffffffe, 0xffffffff, 0x1, 0x2, 0x3, 0x80000000, 0x80000001, 0x80000002, 0xffffffff, 0, 0x2, 0x3, 0x4, 0x80000001, 0x80000002, 0x80000003, 0, 0x1, 0x7fffffff, 0x80000000, 0x80000001, 0xfffffffe, 0xffffffff, 0, 0x7ffffffd, 0x7ffffffe, 0x80000000, 0x80000001, 0x80000002, 0xffffffff, 0, 0x1, 0x7ffffffe, 0x7fffffff, 0x80000001, 0x80000002, 0x80000003, 0, 0x1, 0x2, 0x7fffffff, 0x80000000, 0xfffffffe, 0xffffffff, 0, 0x7ffffffd, 0x7ffffffe, 0x7fffffff, 0xfffffffc, 0xfffffffd, 0xffffffff, 0, 0x1, 0x7ffffffe, 0x7fffffff, 0x80000000, 0xfffffffd, 0xfffffffe};

#define NR_DATA (sizeof(test_data) / sizeof(test_data[0]))

int main() {
	int i, j, ans_idx = 0;
	
	Result res;
	res.msec = 0;

	bench_prepare(&res);

	for(i = 0; i < NR_DATA; i ++) {
		for(j = 0; j < NR_DATA; j ++) {
			nemu_assert(add(test_data[i], test_data[j]) == ans[ans_idx ++]);
		}
		nemu_assert(j == NR_DATA);
	}

	nemu_assert(i == NR_DATA);

	bench_done(&res);
	
	printf("total cycle: %u\n", res.msec);

	return 0;
}

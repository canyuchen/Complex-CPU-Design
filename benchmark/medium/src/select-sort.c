#include "trap.h"
#include "../../lib/include/perf_cnt.h"
#include "../../lib/include/printf.h"

#define N 20

int a[N] = {2, 12, 14, 6, 13, 15, 16, 10, 0, 18, 11, 19, 9, 1, 7, 5, 4, 3, 8, 17};

void select_sort() {
	int i, j, k, t;
	for(i = 0; i < N - 1; i ++) {
		k = i;
		for(j = i + 1; j < N; j ++) {
			if(a[j] < a[k]) {
				k = j;
			}
		}

		t = a[i];
		a[i] = a[k];
		a[k] = t;
	}
}

int main() {
	select_sort();

	int i;
	
	Result res;
	res.msec = 0;

	bench_prepare(&res);

	for(i = 0; i < N; i ++) {
		nemu_assert(a[i] == i);
	}

	nemu_assert(i == N);

	select_sort();

	for(i = 0; i < N; i ++) {
		nemu_assert(a[i] == i);
	}

	nemu_assert(i == N);

	bench_done(&res);
	
	printf("total cycle: %d\n", res.msec);

	return 0;
}

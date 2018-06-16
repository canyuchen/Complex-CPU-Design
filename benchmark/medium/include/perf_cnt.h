
#ifndef __PERF_CNT__
#define __PERF_CNT__

#ifdef __cplusplus
extern "C" {
#endif

/*
 * TODO: Please add your own performance profiling variables
 */
typedef struct Result {
  unsigned long msec;
} Result;

void bench_prepare(Result *res);
void bench_done(Result *res);

#endif

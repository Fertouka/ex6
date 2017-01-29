/*
 * ThreadPool.h
 *
 *  Created on: Jan 20, 2017
 *      Author: viki
 */

#ifndef THREADPOOL_H_
#define THREADPOOL_H_

#include "Job.h"
#include <queue>
#include <pthread.h>
using namespace std;

class ThreadPool {
private:
	queue<Job *> jobs_queue;
	int threads_num;
	pthread_t* threads;
	bool stop;
	bool isDone;
	pthread_mutex_t lock;
public:
	ThreadPool(int threads_num);
	void doJobs();
	void addJob(Job *job);
	void terminate();
	bool isEmpty();
	virtual ~ThreadPool();

	int getThreads_num() const;
    void ThreadPoolJoin() ;

	pthread_t *getThreads() const;
};

#endif /* THREADPOOL_H_ */

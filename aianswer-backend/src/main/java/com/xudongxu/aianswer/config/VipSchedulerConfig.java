package com.xudongxu.aianswer.config;


import io.reactivex.Scheduler;
import io.reactivex.schedulers.Schedulers;
import lombok.Data;
import org.jetbrains.annotations.NotNull;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * @author 16871
 */
@Configuration
@Data
public class VipSchedulerConfig {

    @Bean
    public Scheduler vipScheduler(){
        ThreadFactory threadFactory = new ThreadFactory() {
           private final AtomicInteger threadNumber= new AtomicInteger(1);
            @Override
            public Thread newThread(@NotNull Runnable r) {
                Thread t = new Thread(r, "VIPThreadPool" + threadNumber.getAndIncrement());
                t.setDaemon(false);
                return t;
            }
        };
//        ScheduledExecutorService executorService = Executors.newScheduledThreadPool(1, threadFactory);
        ExecutorService executorService = new ThreadPoolExecutor(
                1,
                2,
                3,
                TimeUnit.SECONDS,
                new LinkedBlockingDeque<>(3),
                threadFactory,
                new ThreadPoolExecutor.DiscardOldestPolicy());

        return Schedulers.from(executorService);
    }
}

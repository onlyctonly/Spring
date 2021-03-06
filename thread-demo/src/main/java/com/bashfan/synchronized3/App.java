package com.bashfan.synchronized3;

public class App {
    public static void main(String[] args) {
        final Processor processor = new Processor();

        Thread t1 = new Thread(new Runnable() {
            public void run() {
                processor.producer();
            }
        });

        Thread t2 = new Thread(new Runnable() {
            public void run() {
                processor.consumer();
            }
        });

        t1.start();
        t2.start();


        try {
            t1.join();
            t2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

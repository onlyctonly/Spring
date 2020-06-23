package reentrantlockdemo1;

public class App {
    public synchronized void demo() {
        System.out.println("demo");
        demo2();
    }

    public void demo2() {
        synchronized (this) {
            System.out.println("demo2");
        }
    }
    public static void main(String[] args) {
        App app = new App();
        app.demo();
    }
}

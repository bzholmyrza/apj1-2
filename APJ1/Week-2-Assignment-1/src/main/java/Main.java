class ThreadTest extends Thread

{

    public void run()

    {

        for(int i = 0; i < 3; i++)

        {

            System.out.println("A");

            System.out.println("B");

        }

    }

}

class ThreadDemo extends Thread

{

    public void run()

    {

        for(int i = 0; i < 3; i++)

        {

            System.out.println("C");

            System.out.println("D");

        }

    }

    public static void main(String args[])

    {

        ThreadTest t1 = new ThreadTest();

        ThreadDemo t2 = new ThreadDemo();

        t1.start();

        t2.start();

    }

}
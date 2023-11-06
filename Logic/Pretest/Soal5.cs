
namespace Pretest
{
    internal class Soal5
    {
        public Soal5()
        {
            Console.WriteLine("=====Soal 5=====");
            Console.Write("Masukkan n: ");
            int n = int.Parse(Console.ReadLine());

            for (int i=0; i<n; i++)
            {
                for (int j=0; j<n; j++)
                {
                    if (i==0 || i == n-1)
                    {
                        Console.Write("*");
                    }
                    else if (i == n/2)
                    {
                        if (j==0 || j == n-1)
                            Console.Write("*");
                        else if (j==n/2)
                            Console.Write(n);
                        else
                            Console.Write(" ");
                    }
                    else
                    {
                        if (j==0 || j==n-1 || j==i || j==n-1-i)
                            Console.Write("*");
                        else
                            Console.Write(" ");
                    }
                }
                Console.WriteLine();
            }
        }
    }
}

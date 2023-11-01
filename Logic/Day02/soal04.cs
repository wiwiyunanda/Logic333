

using Utility;

namespace Day02
{
    internal class Soal04
    {
        public Soal04()
        {
            Console.WriteLine("====Soal 04====");

            Console.WriteLine("Nilai n1: ");
            int n1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Nilai n2: ");
            int n2 = int.Parse(Console.ReadLine());

            //studi kasus
            //n=7, n2=5
            //0   1   2   3   4   5   6
            //1	  5   2	  10  3	  15  4

            //1= baris
            //n1= kolom

            int nomer = 1;
            int[,] matrix = new int[1, n1];
            for (int i = 0; i < n1; i++)
            {
                if (i % 2 == 0) //genap
                {
                    matrix[0, i] = nomer;
                    nomer++;
                }
                else
                {
                    matrix[0, i] = n2;
                    n2 += 5;
                }
            }


            Printing.Print2D(matrix);
        }
    }
}

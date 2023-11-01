
using Utility;

namespace Day02
{
    internal class Soal09
    {
        public Soal09()
        {
            Console.WriteLine("====Soal 09====");

            Console.WriteLine("Nilai n1: ");
            int n1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Nilai n2: ");
            int n2 = int.Parse(Console.ReadLine());

            //studi kasus
            //n=7, n2=3
            //0   1   2   3   4   5   6
            //0   3   6   9   12  15  18
            //18  15  12  9   6   3   0

            int[,] matrix = new int[2, n1];
            for (int i = 0; i < n1; i++)
            {

                matrix[0, i] = i * n2;
                matrix[1, i] = (n1-(i+1))*n2;
            }

            Printing.Print2D(matrix);

            
        }
    }
}

      


using Utility;

namespace Day02
{
    internal class Soal08
    {
        public Soal08()
        {
            Console.WriteLine("====Soal 08====");

            Console.WriteLine("Nilai n1: ");
            int n1 = int.Parse(Console.ReadLine());
            //studi kasus
            //n=7
            //0   1   2   3   4   5   6
            //0   2   4   6   8   10  12
            //0   3   6   9   12  15  18

            int[,] matrix = new int[2, n1];
            for (int i = 0; i < n1; i++)
            {

                matrix[0, i] = i*2;
                matrix[1, i] = i*3;

            }

            Printing.Print2D(matrix);
            
        }
    }
}

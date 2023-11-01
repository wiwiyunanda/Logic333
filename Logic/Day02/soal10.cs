
using Utility;

namespace Day02
{
    internal class Soal10
    {
        public Soal10()
        {
            Console.WriteLine("====Soal 10====");

            Console.WriteLine("Nilai n1: ");
            int n1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Nilai n2: ");
            int n2 = int.Parse(Console.ReadLine());
            //studi kasus
            //n=7 n2=3
            //0   1   2   3   4   5   6
            //0   3   6   9   12  15  18
            //0   4   8   12  16  20  24

            int[,] matrix = new int[2, n1];
            for (int i = 0; i < n1; i++)
            {

                matrix[0, i] = i * 3;
                matrix[1, i] = i* (n2+1);

            }
            Printing.Print2D(matrix);
           
        }
        
    }
}

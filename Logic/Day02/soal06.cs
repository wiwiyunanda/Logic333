

using Utility;

namespace Day02
{
    internal class Soal06
    {
        public Soal06()
        {
            Console.WriteLine("====Soal 06====");

            Console.WriteLine("Nilai n1: ");
            int n1 = int.Parse(Console.ReadLine());


            //studi kasus
            //n=7, n2=3
            //0   1   2   3   4
            //5   6   7   8   9
            //10  11  12  13  14

            int[,] matrix = new int[2, n1];
            for (int i = 0; i < n1; i++)
            {
                int barissatu = (int)Math.Pow(n1, i);
                matrix[0, i] = barissatu;
                matrix[1, i] = barissatu + i;

            }

            Printing.Print2D(matrix);
        }
    }
}

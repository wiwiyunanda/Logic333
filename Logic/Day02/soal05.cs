

using Utility;

namespace Day02
{
    internal class Soal05
    {
        public Soal05()
        {
            Console.WriteLine("====Soal 05====");

            Console.WriteLine("Nilai n1: ");
            int n1 = int.Parse(Console.ReadLine());


            //studi kasus
            //n=7, n2=3
            //i= 0    1   2   3   4   5   6
            //0= 7    8	  9	 10	 11	 12	 13
            //1= 14  15  16  17  18  19  20

            int[,] matrix = new int[2, n1];
            for (int i = 0; i < n1; i++)
            {
                matrix[0, i] = i + n1;
                matrix[1, i] = i + (n1 * 2);
            }

            Printing.Print2D(matrix);
        }
    }
}



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

            Print2D(matrix);
        }
        public void Print2D(int[,] arr2d)
        {
            for (int row = 0; row < arr2d.GetLength(0); row++)
            {
                for (int coll = 0; coll < arr2d.GetLength(1); coll++)
                {
                    //cetak kolom
                    Console.Write($"{arr2d[row, coll]}\t");
                }
                //pindah baris
                Console.WriteLine();
            }
        }
    }
}

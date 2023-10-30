

namespace Day02
{
    internal class Soal02
    {
        public Soal02()
        {
            Console.WriteLine("====Soal 02====");

            Console.WriteLine("Nilai n1: ");
            int n1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Nilai n2: ");
            int n2 = int.Parse(Console.ReadLine());

            //studi kasus
            //n=7, n2=3
            //0   1   2   3   4   5   6
            //1   3  -9  27  81  -243 729

            //1= baris
            //n1= kolom
            int[,] matrix = new int[1, n1];
            for (int i = 0; i < n1; i++)
                if ((i+1) % 3 == 0)
                {
                matrix[0, i] = (int)Math.Pow(n2, i);
                matrix[0, i] *= -1;
                }
            else
                {
                    matrix[0, i] = (int)(Math.Pow(n2, i));
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


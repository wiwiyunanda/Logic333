
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

      
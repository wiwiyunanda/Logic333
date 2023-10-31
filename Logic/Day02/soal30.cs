
namespace Day02
{
    internal class Soal30
    {
        public Soal30()
        {
            // ini adalah contoh soal utk menampilkan matrix
            Console.WriteLine("====Soal 30====");

            Console.WriteLine("Nilai n: ");
            int n = int.Parse(Console.ReadLine());


            int[,] matrix = new int[n, n];
            Random acak = new Random();

            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    matrix[i, j] = acak.Next(-25,25);
                }

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

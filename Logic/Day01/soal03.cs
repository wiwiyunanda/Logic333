

namespace Day01
{
    internal class Soal03
    {
        public Soal03()
        {
            Console.WriteLine("===Soal 03===");
            Console.Write("Nilai n: ");
            int n = int.Parse(Console.ReadLine());
            //n = 7
            //studi kasus
            //1   4   7   10  13  16  19

            string[] matrix = new string[n];
            for (int i = 0; i < n; i++)
            {
                Console.Write($"{i*3+1 }\t");
            }
        }
    }
}

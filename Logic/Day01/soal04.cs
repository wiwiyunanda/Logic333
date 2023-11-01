

namespace Day01
{
    internal class Soal04
    {
        public Soal04()
        {
            Console.WriteLine("===Soal 04===");
            Console.Write("Nilai n: ");
            int n = int.Parse(Console.ReadLine());
            //n = 7
            //studi kasus
            //1   5   9   13  17  21  25
            string[] matrix = new string[n];
            for (int i = 0; i < n; i++)
            {
                Console.Write($"{i * 4 + 1}\t");
            }
        }
    }
}

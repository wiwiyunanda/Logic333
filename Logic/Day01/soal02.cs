

namespace Day01
{
    internal class Soal02
    {
        public Soal02()
        {
            Console.WriteLine("===Soal 02===");
            Console.Write("Nilai n: ");
            int n = int.Parse(Console.ReadLine());
            //n = 7
            //studi kasus
            //2   4   6   8   10  12  14
           string[] matrix = new string[n];
            for (int i = 0; i < n; i++)
            {
                Console.Write($"{i * 2}\t");
            }
           
        }
    }
}



namespace Day01
{
    internal class Soal04
    {
        public Soal04()
        {
            Console.WriteLine("===Soal 04===");
            Console.Write("Nilai n: ");
            int n = int.Parse(Console.ReadLine());
            //Looping for
            for (int i = 0; i < n; i++)
            {
                Console.Write($"{i * 4 + 1}\t");
            }
        }
    }
}



namespace Day01
{
    internal class Soal03
    {
        public Soal03()
        {
            Console.WriteLine("===Soal 03===");
            Console.Write("Nilai n: ");
            int n = int.Parse(Console.ReadLine());
            //Looping for
            for (int i = 0; i < n; i++)
            {
                Console.Write($"{i*3+1 }\t");
            }
        }
    }
}

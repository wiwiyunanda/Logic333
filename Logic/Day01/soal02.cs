

namespace Day01
{
    internal class Soal02
    {
        public Soal02()
        {
            Console.WriteLine("===Soal 02===");
            Console.Write("Nilai n: ");
            int n = int.Parse(Console.ReadLine());
            //Looping for
            for (int i = 0; i < n; i++)
            {
                Console.Write($"{i*2}\t");
            }
        }
    }
}

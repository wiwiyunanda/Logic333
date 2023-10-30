
namespace Day01
{
    internal class Soal05
    {
        public Soal05()
        {
            Console.WriteLine("===Soal 05===");
            Console.Write("Nilai n: ");
            // study kasus
            //1	 5	*	9	13	*	17
            //int n = 7;
            int n = int.Parse(Console.ReadLine());
            int deret = 1;
            for (int i = 0; i < n; i++)
            { 
                if ((i+1) % 3 == 0)
                    Console.Write("*\t");
                else
                {
                    Console.Write($"{deret}\t");
                    deret += 4;
                }
            }
            
            //cara lain:
            //int currentNumber = 1;

            //for (int i = 1; i < n - 1; i++)
            //{
            //    Console.Write(currentNumber + "\t");
            //    if (i % 2 == 0)
            //    {
            //        Console.Write("*\t");
            //    }
            //    currentNumber += 4;
            //}
        }
    }
}

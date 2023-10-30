

namespace Day01
{
    internal class Soal10
    {
        public Soal10()
        {
            Console.WriteLine("===Soal 10===");
            Console.Write("Nilai n: ");
            //inputan
            int n = int.Parse(Console.ReadLine());
            //int n = 7;
            //study kasus
            //3 9 27 XXX 243 729 2187
            //setiap (i + 1) % 4 maka XXX
            
            for (int i = 0; i< n; i++)
            {
                if ((i+1) % 4 == 0)
                    Console.Write("XXX\t");
                else
                    Console.Write($"{Math.Pow(3, i +1)}\t"); //mathpow berguna untuk menghitung suatu bilangan yang dipangkatkan dengan bilangan lain.
            }
             //cara lain:
            //int currentNum = 3;
            //for (int i = 2; i < n; i++)
            //{
            //    Console.Write(currentNum + "\t");
            //    if (i % 4 == 0)
            //    {
            //        n += 1;
            //        Console.Write("XXX\t");
            //        currentNum *= 3;
            //    }
            //    currentNum *= 3;
            //}

        }
    }
}

using System.Reflection.Metadata;
using System.Runtime.InteropServices;

namespace Day04
{
    internal class BirthdayCakeCandles
    {
        public BirthdayCakeCandles()
        {
            Console.WriteLine("=====Birthday Cake Candles====");
            Console.Write("Masukkan deret lilin:");

            int[] arrCount = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);

            Array.Sort(arrCount);

            int max = arrCount[0];
            int count = 0;
            for (int i = 0; i < arrCount.Length; i++)
            {
                
                if (arrCount[i] > max)
                {
                    max = arrCount[i];
                    count = 1;
                }
                else if (arrCount[i] == max)
                {
                    count++;
                }
            }
            Console.WriteLine($"{count}");
        }
    }
}    


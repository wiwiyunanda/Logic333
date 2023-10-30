using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day01
{
    internal class Soal09
    {
        public Soal09()
        {
            Console.WriteLine("===Soal 09===");
            Console.Write("Nilai n: ");
            int n = int.Parse(Console.ReadLine());
            //int n = 7;
            int currentNum = 4;
            for (int i = 1; i < n - 1; i++)
            {
                Console.Write(currentNum + "\t");
                if (i % 2 == 0)
                {
                    Console.Write("*\t");
                }
                currentNum *= 4;
            }

        }
    }
}

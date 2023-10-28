using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day01
{
    internal class Soal06
    {
        public Soal06()
        {
            int n = 7;
            int currentNumber = 1;

            for (int i = 1; i < n - 1; i++)
            {
                Console.Write(currentNumber + "\t");
                if (i % 2 == 0)
                {
                    Console.Write("*\t");
                    currentNumber += 4;
                }
                currentNumber += 4;
            }

        }
    }
}

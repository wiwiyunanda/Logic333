using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day01
{
    internal class Soal10
    {
        public Soal10()
        {
            int n = 8;
            int currentNum = 3;
            for (int i = 1; i < n - 1; i++)
            {
                Console.Write(currentNum + "\t");
                if (i % 3 == 0)
                {
                    Console.Write("XXX\t");
                    currentNum *= 3;
                }
                currentNum *= 3;
            }

        }
    }
}

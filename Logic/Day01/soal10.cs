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
            int n = 7;
            int currentNum = 3;
            for (int i = 2; i < n; i++)
            {
                Console.Write(currentNum + "\t");
                if (i % 4 == 0)
                {
                    n += 1;
                    Console.Write("XXX\t");
                    currentNum *= 3;
                }
                currentNum *= 3;
            }

        }
    }
}

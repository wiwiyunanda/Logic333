using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day01
{
    internal class Soal07
    {
        public Soal07()
        {
            int n = 7;
            int currentNum = 2;
            for (int i = 0; i < n; i++)
            {
                Console.Write(currentNum + "\t");
                currentNum = currentNum * 2;
            }
        }

    }
}

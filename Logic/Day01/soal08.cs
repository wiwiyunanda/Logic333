﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day01
{
    internal class Soal08
    {
        public Soal08()
        {
            int n = 7;
            int currentNum = 3;
            for (int i = 0; i < n; i++)
            {
                Console.Write(currentNum + "\t");
                currentNum = currentNum *= 3;
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day01
{
    internal class Soal00
    {
        public Soal00()
        {
            Console.WriteLine("===Soal 01===");
            Console.Write("Nilai n: ");
            int n = int.Parse(Console.ReadLine());
            //1 3 5 7 9 11 13
            //Looping for
            for  (int i = 0; i <n; i++)
                
            {
                Console.Write($"{i* 2 + 1}\t");
            }
        }
    }
}

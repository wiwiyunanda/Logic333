﻿
using System.Diagnostics.Metrics;

namespace Day02
{
    internal class Soal03
    {
        public Soal03()
        {
            Console.WriteLine("====Soal 03====");

            Console.WriteLine("Nilai n1: ");
            int n1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Nilai n2: ");
            int n2 = int.Parse(Console.ReadLine());

            //studi kasus
            //n=7, n2=3
            //0   1   2   3   4   5   6
            //3   6   12  24  12  6   3


            //1= baris
            //n1= kolom
            int[,] matrix = new int[1, n1];
            int mid = n1 / 2;
            for (int i = 0; i < mid; i++)
            {
                matrix[0, i] = n2;
                n2 = n2 * 2;
            }
            for (int i = mid; i < n1; i++)
            {
                matrix[0, i] = n2;
                n2 = n2 / 2;
            }

               

        Print2D(matrix);
        }
        public void Print2D(int[,] arr2d)
        {
            for (int row = 0; row < arr2d.GetLength(0); row++)
            {
                for (int coll = 0; coll < arr2d.GetLength(1); coll++)
                {
                    //cetak kolom
                    Console.Write($"{arr2d[row, coll]}\t");
                }
                //pindah baris
                Console.WriteLine();
            }
        }
    }
}


﻿
namespace Day06
{
    internal class CountingSort1
    {
        public CountingSort1()
        {
            Console.WriteLine("=====Counting Sort 1=====");
            Console.Write("Masukkan jumlah deret: ");
            int jumlah = int.Parse(Console.ReadLine());

            Random rdm = new Random();
            int[] deret = new int[jumlah];
            int[] result = new int[jumlah + 1];

            for (int i = 0; i < jumlah; i++)
            {
                deret[i] = rdm.Next(jumlah);
                result[deret[i]] += 1;
            }

            Console.WriteLine(String.Join(",", deret));
            Console.WriteLine(String.Join(",", result));

        }
    }
}
            //======Cara tidak menggunakan random====
            //string s = "63 25 73 1 98 73 56 84 86 57 16 83 8 25 81 56 9 53 98 67 99 12 83 89 80 91 39 86 76 85 74 39 25 90 59 10 94 32 44 3 89 30 27 79 46 96 27 32 18 21 92 69 81 40 40 34 68 78 24 87 42 69 23 41 78 22 6 90 99 89 50 30 20 1 43 3 70 95 33 46 44 9 69 48 33 60 65 16 82 67 61 32 21 79 75 75 13 87 70 33";
            //string[] inputStrings = s.Split(' ');
            //int[] inputArray = Array.ConvertAll<string, int>(inputStrings, s => int.Parse(s));
           
            //List<int> arrList = inputArray.ToList();

            //foreach (var item in arrList)
            //{
            //    Console.Write(item + " ");
            //    Console.WriteLine();
            //}

            //List<int> output = countingSort1(arrList);

            //foreach (var item in output)
            //{
            //    Console.Write(item + " ");
            //}

            //static List<int> countingSort1(List<int> arr)
            //{
            //    int[] result = new int[100];

            //    for (int i = 0; i < arr.Count; i += 100)
            //    {
            //        for (int j = i; j < i + 100; j++)
            //        {
            //            result[arr[j]]++;
            //        }
            //    }

            //    return result.ToList();
            //}
      
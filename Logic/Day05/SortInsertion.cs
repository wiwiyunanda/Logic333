
using Utility;

namespace Day05
{
    internal class SortInsertion
    {
        public SortInsertion()
        {
            Console.WriteLine("=====Sort Insertion=====");
            Console.WriteLine("Masukkan deret: ");

            int[] arrInt = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
            arrInt = Sorting.Insertion(arrInt);
            foreach(var item in arrInt)
            {
                Console.Write($"{item}\t");
            }
        }
    }
}

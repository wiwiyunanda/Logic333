
using System.Threading.Channels;
using Utility;

namespace Day05
{
    internal class SortInsertionForString
    {
        public SortInsertionForString()
        {
            Console.WriteLine("=====Sort Insertion For String=====");
            Console.WriteLine("Masukkan string: ");
            string[] arrString = Console.ReadLine().Split(' ');

                arrString = Sorting.StringInsertion(arrString);

            for (int i = 0; i < arrString.Length; i++)
            {
                Console.WriteLine(arrString[i]);
            }

        }
    }
}

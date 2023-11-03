
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
            char[] arrChar = Console.ReadLine().ToCharArray();

                arrChar = Sorting.Insertion(arrChar);

            for (int i = 0; i < arrChar.Length; i++)
            {
                Console.WriteLine(arrChar[i]);
            }

        }
    }
}

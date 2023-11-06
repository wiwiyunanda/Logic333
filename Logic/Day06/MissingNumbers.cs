
using Utility;

namespace Day06
{
    internal class MissingNumbers
    {
        public MissingNumbers()
        {
            Console.WriteLine("=====Missing Numbers======");
            
            Console.Write("Masukkan deret 1: ");
            List<string> arr = Console.ReadLine().Split(' ').ToList();


            Console.Write("Masukkan deret 2: ");
            List<string> brr = Console.ReadLine().Split(' ').ToList();

            int cursor = 0;
            for (int i = 0; i < brr.Count(); i++)
            {
                for (int j = cursor; j < arr.Count(); j++)
                {
                    if (int.Parse(arr[j]) == int.Parse(brr[i]))
                    {
                        brr.RemoveAt(i);
                        cursor = j + 1;
                        i--;
                        break;
                    }
                }
            }
            Printing.PrintList(arr);
            Console.WriteLine();
            Printing.PrintList(brr);

        }
    }
}

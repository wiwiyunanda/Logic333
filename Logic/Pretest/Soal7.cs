
using System.Data.SqlTypes;

namespace Pretest
{
    internal class Soal7
    {
        public Soal7()
        {
            Console.WriteLine("=====Soal 7=====");
            Console.Write("Masukkan jumlah uang: ");
            int uang = int .Parse(Console.ReadLine());

            int iceCream = 0;
            for (int i = uang; i>=100; i -= 100)
            {
                iceCream++;
                if (iceCream % 6 == 0)
                    iceCream++;
            }

            Console.WriteLine($"Total Ice Cream yang didapatkan adalah: {iceCream}");
        } 
    }
}

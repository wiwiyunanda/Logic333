using System.Data.SqlTypes;
using Day_04B;

namespace Day04B
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Program Day 04 B");
            new Program();
            Console.WriteLine();
            Console.WriteLine("Press any key!!");
            Console.ReadKey();
        }
        public Program()
        {
            Console.WriteLine("===Day 04 B===");
            Console.WriteLine("1. A Very Big Sum");
            Console.WriteLine("2. Compare the Triplets");
            Console.WriteLine("3. camel Case");
            //Console.WriteLine("3. Substring");
            //Console.WriteLine("4. Time Conversion");
            //Console.WriteLine("5. Simple Array Sum");
            //Console.WriteLine("6. Diagonal Difference");
            //Console.WriteLine("7. Plus Minus");
            //Console.WriteLine("8. Staircase");
            //Console.WriteLine("9. Min-Max Sum");
            //Console.WriteLine("10. Birthday Cake Candles");
            //Console.WriteLine("11. A Very Big Sum");
            string answer = "t"; //tidak keluar
            while (answer.ToLower() == "t")
            {
                Console.Write("====Masukkan nomor soal: ====");
                int soal = int.Parse(Console.ReadLine());
                switch (soal)
                {
                    case 1:
                        AVeryBigSum aVeryBigSum = new AVeryBigSum();
                        break;
                    case 2:
                        CompareTheTriplets compareTheTriplets = new CompareTheTriplets();
                        break;
                    case 3:
                        camelCase camelCase = new camelCase();
                        break;
                    default:
                        Console.WriteLine("Nomor soal tidak ditemukan.");
                        break;
                }
                Console.WriteLine();
                Console.Write("Selesai? [y/t]");
                answer = Console.ReadLine();

                //clear screen
                Console.Clear();
            }
        }
    }
}

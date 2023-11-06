
namespace Day06
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Program Day 06");
            new Program();
            Console.WriteLine();
            Console.WriteLine("Press any key!!");
            Console.ReadKey();
        }
        public Program()
        {
            Console.WriteLine("===Day 06===");
            Console.WriteLine("1. Big Sorting");
            Console.WriteLine("2. Counting Sort 1");
            Console.WriteLine("3. Find the Median");
            Console.WriteLine("4. Missing Numbers");
            Console.WriteLine("5. Sherlock Array");
            Console.WriteLine("6. Ice Cream Parlor");
            Console.WriteLine("7. Minimum Loss");
            Console.WriteLine("8. Pairs");
            Console.WriteLine("9. Recursive Digit Sum");


            string answer = "t"; //tidak keluar
            while (answer.ToLower() == "t")
            {
                Console.Write("Masukkan nomor soal: ");
                int soal = int.Parse(Console.ReadLine());
                switch (soal)
                {
                    case 1:
                        new BigSorting();
                        break;
                    case 2:
                        new CountingSort1();
                        break;
                    case 3:
                        new FindtheMedian();
                        break;
                    case 4:
                        new MissingNumbers();
                        break;
                    case 5:
                        new SherlockArray();
                        break;
                    case 6:
                        new IceCreamParlor();
                        break;
                    case 7:
                        new MinimumLoss();
                        break;
                    case 8:
                        new Pairs();
                        break;
                    case 9:
                        new RecursiveDigitSum();
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



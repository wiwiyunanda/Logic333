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
            Console.WriteLine("4. Strong Password");
            Console.WriteLine("5. Caesar Cipher");
            Console.WriteLine("6. Mars Eksploration");
            Console.WriteLine("7. Hackerrank in A String");

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
                    case 4:
                        StrongPassword strongPassword = new StrongPassword();
                        break;
                    case 5:
                        CaesarCipher caesarCipher = new CaesarCipher();
                        break;
                    case 6:
                        MarsExploration marsExploration = new MarsExploration();
                        break;
                    case 7:
                        HackerRankinAString hackerRankinAString = new HackerRankinAString();
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

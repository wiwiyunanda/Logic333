// See https://aka.ms/new-console-template for more information

namespace Day04
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Program Day04");
            new Program();
            Console.WriteLine();
            Console.WriteLine("Press any key!!");
            Console.ReadKey();
        }
        public Program() {
            Console.WriteLine("===Day 04===");
            Console.WriteLine("1. Solve Me First");
            Console.WriteLine("2. Split");
            Console.WriteLine("3. Substring");
            Console.WriteLine("4. Time Conversion");
            Console.WriteLine("5. Simple Array Sum");
            Console.WriteLine("6. Diagonal Difference");
            Console.WriteLine("7. Plus Minus");
            Console.WriteLine("8. Staircase");
            Console.WriteLine("9. Min-Max Sum");
            Console.WriteLine("10. Birthday Cake Candles");
            
            string answer = "t"; //tidak keluar
            while (answer.ToLower() == "t")
            {
                Console.Write("==Masukkan nomor soal: ");
                int soal = int.Parse(Console.ReadLine());
                switch (soal)
                {
                    case 1:
                        SolveMeFirst solveMeFirst = new SolveMeFirst();
                        break;
                    case 2:
                        Split split = new Split();
                        break;
                    case 3:
                        Substring substring = new Substring();
                        break;
                    case 4:
                         TimeConversion timeConversion = new TimeConversion();
                        break;
                    case 5:
                        SimpleArraySum simpleArraySum = new SimpleArraySum();
                        break;
                    case 6:
                        DiagonalDifference diagonalDifference = new DiagonalDifference();
                        break; 
                    case 7:
                        PlusMinus plusMinus = new PlusMinus();
                        break;
                    case 8:
                        Staircase staircase = new Staircase();
                        break;
                    case 9:
                        MiniMaxSum miniMaxSum = new MiniMaxSum();
                        break;
                    case 10:
                        BirthdayCakeCandles birthdayCakeCandles = new BirthdayCakeCandles();
                        break;
                 
                    default:
                        Console.WriteLine("Nomor soal tidak ditemukan.");
                        break;
                }
                Console.WriteLine();
                Console.Write("Selesai? [y/n]");
                answer = Console.ReadLine();

                //clear screen
                Console.Clear();
            }
        }
        
    }
}
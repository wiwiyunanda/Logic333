
namespace Day10
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Program Day 10");
            new Program();
            Console.WriteLine();
            Console.WriteLine("Press any key!!");
            Console.ReadKey();
        }
        public Program()
        {
            Console.WriteLine("===Day 10===");
            Console.WriteLine("1. Simplified Chess Engine");
            Console.WriteLine("2. Password Cracker");
            Console.WriteLine("3. Progressive Tax");
            Console.WriteLine("4. Gross Up Tax");



            string answer = "t"; //tidak keluar
            while (answer.ToLower() == "t")
            {
                Console.Write("Masukkan nomor soal: ");
                int soal = int.Parse(Console.ReadLine());
                switch (soal)
                {
                    case 1:
                        new SimplifiedChessEngine();
                        break;
                    case 2:
                        new PasswordCracker();
                        break;
                    case 3:
                        new ProgressiveTax();
                        break;
                    case 4:
                        new GrossUpTax();
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



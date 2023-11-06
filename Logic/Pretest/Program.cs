
namespace Pretest
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Program Pre Test");
            new Program();
            Console.WriteLine();
            Console.WriteLine("Press any key!!");
            Console.ReadKey();
        }
        public Program()
        {
            Console.WriteLine("===Pretest===");
            Console.WriteLine("1. Soal No 1.");
            Console.WriteLine("2. Soal No 2.");
            Console.WriteLine("3. Soal No 3.");
            Console.WriteLine("5. Soal No 5.");

            string answer = "t"; //tidak keluar
            while (answer.ToLower() == "t")
            {
                Console.Write("Masukkan nomor soal: ");
                int soal = int.Parse(Console.ReadLine());
                switch (soal)
                {
                    case 1:
                        new Soal1();
                        break;
                    case 2:
                        new Soal2();
                        break;
                    case 3:
                        new Soal3();
                        break;
                    case 5:
                        new Soal5();
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



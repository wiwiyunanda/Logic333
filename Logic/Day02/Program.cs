// See https://aka.ms/new-console-template for more information
namespace Day02
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Program Day02");
            new Program();
            Console.WriteLine();
            Console.WriteLine("Press any key!!");
            Console.ReadKey();
        }

        // constructor
        public Program()
        {
            Console.WriteLine("===Day 02===");
            string answer = "t"; //tidak keluar

            while (answer.ToLower() == "t")
            {
                Console.Write("==Masukkan nomor soal: ");
                int soal = int.Parse(Console.ReadLine());
                switch (soal)
                {
                    case 1:
                        Soal01 soal01 = new Soal01();
                        break;
                    case 2:
                        Soal02 soal02 = new Soal02();
                        break;
                    case 3:
                        Soal03 soal03 = new Soal03();
                        break;
                    case 4:
                        Soal04 soal04 = new Soal04();
                        break;
                    case 5:
                        Soal05 soal05 = new Soal05();
                        break;
                    case 6:
                        Soal06 soal06 = new Soal06();
                        break;
                    case 7:
                        Soal07 soal07 = new Soal07();
                        break;
                    case 8:
                        Soal08 soal08 = new Soal08();
                        break;
                    case 9:
                        Soal09 soal09 = new Soal09();
                        break;
                    case 10:
                        Soal10 soal10 = new Soal10();
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

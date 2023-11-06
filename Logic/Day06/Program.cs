
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


            string answer = "t"; //tidak keluar
            while (answer.ToLower() == "t")
            {
                Console.Write("Masukkan nomor soal: ");
                int soal = int.Parse(Console.ReadLine());
                switch (soal)
                {
                    case 1:
                        BigSorting bigSorting = new BigSorting();
                        break;
                    case 2:
                        CountingSort1 countingSort1 = new CountingSort1();
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



// See https://aka.ms/new-console-template for more information
namespace Gateway
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("====Welcome to Batch 333 ===");
           
            new Program();
        }

        public Program()
        {
            string answer = "t";
            while (answer.ToLower() == "t")
            {
                Console.WriteLine(" 1 Day 01");
                Console.WriteLine(" 2 Day 02");
                Console.WriteLine(" 3 Day 04");
                Console.WriteLine(" 4 Day O4 B");
                Console.WriteLine(" 5 Day 05");
                Console.WriteLine("99 Pre Test");
                Console.Write("Pilih hari: ");

                int hari = int.Parse(Console.ReadLine());

                switch (hari)
                {
                    case 1:
                        Day01.Program program01 = new Day01.Program(); 
                        break;
                    case 2:
                        Day02.Program program02 = new Day02.Program();
                        break;
                    case 3:
                        Day04.Program program04 = new Day04.Program();
                        break;
                    case 4:
                        Day04B.Program program04B = new Day04B.Program();
                        break;
                    case 5:
                        Day05.Program program05 = new Day05.Program();
                        break;
                    case 99:
                        Pretest.Program program99 = new Pretest.Program();
                        break;
                    default:
                        Console.WriteLine("Hari tidak ditemukan");
                        break;
                }

                Console.Write("keluar [y/t]: ");
                answer = Console.ReadLine();

            }
        }
    }
}

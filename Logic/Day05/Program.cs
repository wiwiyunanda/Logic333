
namespace Day05
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Program Day 05");
            new Program();
            Console.WriteLine();
            Console.WriteLine("Press any key!!");
            Console.ReadKey();
        }
        public Program()
        {
            Console.WriteLine("===Day 05===");
            Console.WriteLine("1. List and Data Type");
            Console.WriteLine("2. List and Object");
            Console.WriteLine("3. List and List");
            Console.WriteLine("4. Making Anagrams");
            Console.WriteLine("5. Sort Insertion");
            Console.WriteLine("6. Sort Insertion For String");

            string answer = "t"; //tidak keluar
            while (answer.ToLower() == "t")
            {
                Console.Write("Masukkan nomor soal: ");
                int soal = int.Parse(Console.ReadLine());
                switch (soal)
                {
                    case 1:
                        ListandDataType listandDataType = new ListandDataType();
                        break;
                    case 2:
                        ListandObject listandObject = new ListandObject();
                        break;
                    case 3:
                        ListandList listandList = new ListandList();
                        break;
                    case 4:
                        MakingAnagrams makingAnagrams = new MakingAnagrams();
                        break;
                    case 5:
                        SortInsertion sortInsertion = new SortInsertion();
                        break;
                    case 6:
                        SortInsertionForString sortInsertionForString = new SortInsertionForString();
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


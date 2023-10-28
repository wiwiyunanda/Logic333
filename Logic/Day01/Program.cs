// See https://aka.ms/new-console-template for more information


namespace Day01
{
    public class Program
    {
        static void Main (string[] args)
        {
            Console.WriteLine("Hello, World!");
            new Program();
            //new Program("Ika");
            //new Program(4);
            Console.WriteLine("Press any key!!");
            Console.ReadKey();
        }

        // constructor
        public Program()
        {
            Console.WriteLine("Program");
            //Additional(5, 6);
            //Subtraction(8, 6);
            //Multiplication(3, 4);
            //Distribution(30, 6);
            //Soal00 soal00 = new Soal00();
            //Soal02 soal02 = new Soal02();
            //Soal03 soal03 = new Soal03();
            //Soal04 soal04 = new Soal04();
            //Soal05 soal05 = new Soal05();
            Soal06 soal06 = new Soal06();

        }

        public Program(string param1)
        {
            Console.WriteLine($"Program string dengan {param1}");
        }

        public Program(int param1)
        {
            Console.WriteLine($"Program integer dengan {param1}");
        }  
        
        private void Additional(int param1, int param2)
        {
            Console.WriteLine($"{param1} + {param2} = {param1 + param2}");
        }

        private void Subtraction (int param1, int param2)
        {
            Console.WriteLine($"{param1} - {param2} = {param1 - param2}");
        }

        private void Multiplication (int param1, int param2)
        {
            Console.WriteLine($"{param1} * {param2} = {param1 * param2}");
        }

        private void Distribution (int param1, int param2)
        {
            Console.WriteLine($"{param1} / {param2} = {param1 / param2}");
        }
    }
}

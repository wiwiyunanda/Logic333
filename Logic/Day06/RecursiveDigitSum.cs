
namespace Day06
{
    internal class RecursiveDigitSum
    {
        public RecursiveDigitSum()
        {
            Console.WriteLine("=====Recursive Digit Sum=====");
            Console.Write("Masukkan input: ");
            string input = Console.ReadLine();
            Console.Write("Masukkan perulangan: ");
            int ulang = int.Parse(Console.ReadLine());

            int result = Super_Digit(String.Concat(Enumerable.Repeat(input, ulang)));
            Console.WriteLine(result);

        }

        private int Super_Digit(string str)
        {
            int result = 0;
               foreach (var item in str)
                {
                    result += int.Parse(item.ToString());
                }
               if (result.ToString().Length >1)
                {
                    return Super_Digit(result.ToString());
                }
            return result;
        }
    }
}

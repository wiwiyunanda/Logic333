
namespace Pretest
{
    internal class Soal8
    {
        public Soal8()
        {
            Console.WriteLine("=====Soal 8=====");
            Console.Write("Masukkan kata: ");
            string input = Console.ReadLine().ToLower();
            int result = CalculateDifference(input);
            Console.WriteLine("Output: " + result);
        }

        static int CalculateDifference(string input)
        {
            input = input.ToLower();
            int vowelSum = 0;
            int consonantSum = 0;

            for (int i = 0; i < input.Length; i++)
            {
                char currentChar = input[i];

                if (Char.IsLetter(currentChar))
                {
                    if ("aeiou".Contains(currentChar))
                    {
                        vowelSum += (currentChar - 'a' + 1);
                    }
                    else
                    {
                        consonantSum += (currentChar - 'a' + 1);
                    }
                }
            }
            return Math.Abs(vowelSum - consonantSum);
        }
    }
}

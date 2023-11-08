
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
            Console.Write("Selisih Vokal dan Konsonan: " + result);
        }

        static int CalculateDifference(string input)
        {
            input = input.ToLower();
            int vokalSum = 0;
            int konsonanSum = 0;

            for (int i = 0; i < input.Length; i++)
            {
                char currentChar = input[i];

                if (Char.IsLetter(currentChar))
                {
                    if ("aeiou".Contains(currentChar))
                    {
                        vokalSum += (currentChar - 'a' + 1);
                    }
                    else
                    {
                        konsonanSum += (currentChar - 'a' + 1);
                    }
                }
            }
            return Math.Abs(vokalSum - konsonanSum);
        }
    }
}

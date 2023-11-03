
using Utility;

namespace Pretest
{
    internal class Soal3
    {
        public Soal3()
        {
            Console.WriteLine("=====Pre Test Soal 3=====");

            Console.Write("Masukkan perpaduan huruf dan angka: ");
            char[] input = Sorting.Insertion(Console.ReadLine().ToCharArray());
            string numbLib = "0123456789";
            string alpLib = "abcdefghijklmnopqrstuvwxyz";
            string angka = "";
            string huruf = "";
            string param1 = param(alpLib, input, huruf);
            string param2 = param(numbLib, input, angka);
            Console.WriteLine(param1 + param2);
        }
        private string param(string lib, char[] input, string output)
        {
            for (int i = 0; i < lib.Length; i++)
            {
                for (int j = 0; j < input.Length; j++)
                {
                    if (input[j] == lib[i])
                    {
                        output += lib[i];
                    }
                }
            }
            return output;
        }
    }
    
}

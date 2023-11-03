

namespace Pretest
{
    internal class Soal2
    {
        public Soal2()
        {
            Console.WriteLine("=====Pre Test Soal 2=====");

            Console.Write("Masukkan kata: ");
            string input = Console.ReadLine().ToLower();
            Console.Write("Masukkan kalimat");
            string key = Console.ReadLine().ToLower();
            int cursor = 0;

            for (int i = 0; i < input.Length; i++)
            {
                for (int j = cursor; j < key.Length; j++)
                {
                    if (input[i] == key[j])
                    {
                        input = input.Remove(i, 1);
                        cursor = j + 1;
                        i--;
                        break;
                    }
                }

            }
            Console.WriteLine("{0}", input.Length == 0 ? "YES" : "NO");
        }
    }
}

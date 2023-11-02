using System.Runtime.CompilerServices;
using System.Threading.Channels;

namespace Day_04B
{
    internal class MarsExploration
    {
        public MarsExploration()
        {
            //sampel input: SOSSPSSQSSOR
            //sampel output: 3

            Console.WriteLine("====Mars Exploration====");
            Console.Write(" Masukkan kode mars: ");
            string input = Console.ReadLine();

            int output = 0;
            for (int i = 0; i < input.Length / 3; i++)
            {
                if (input.Substring(3* i, 3) != "SOS")
                    output++;
            }
            Console.WriteLine(output);




            //cara lain
            //string s = Console.ReadLine().ToUpper();
            //int changedLetters = 0;
            //for (int i = 0; i < s.Length; i += 3)
            //{
            //    if (s[i] != 'S') { changedLetters++; }
            //    if (s[i + 1] != 'O') { changedLetters++; }
            //    if (s[i + 2] != 'S') { changedLetters++; }
            //}

            //Console.WriteLine(changedLetters);
        }
    }
    
}

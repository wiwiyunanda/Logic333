
namespace Day05
{
    internal class MakingAnagrams
    {
        public MakingAnagrams()
        {
            Console.WriteLine("=====Making Anagrams=====");
            Console.WriteLine("Masukkan string: ");
            string[] input = Console.ReadLine().Split(' ');

            //studikasus
            //input: abc, cde
            //output: 4

            int pertama = input[0].Length;
            int kedua = input[1].Length;
            int totalInLen = pertama + kedua;

            string charInp = " ";
            for (int i = 0; i < input[0].Length; i++)
            {
                for (int j = 0; j < input[1].Length; j++)
                {
                    if (input[0][i] == input[1][j])
                    {
                        int idx = charInp.IndexOf(input[1][j]);
                        if (idx == -1)
                        {
                            charInp += input[1][j];
                        }
                    }
                }
            }
            int anagram = totalInLen - (2 * charInp.Length);
            Console.WriteLine(anagram);
        }
    }
}
